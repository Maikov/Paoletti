<?php
class ModelCatalogTreeComments extends Model
{
	public function addComment($product_id, $data, $data_get)
	{
		if (isset($data_get['parent'])) {
			$parent_id = $data_get['parent'];
		} else {
			$parent_id = 0;
		}


		$sql   = "
		SELECT r.*, p.*, pp.sorthex as sorthex_parent
		FROM " . DB_PREFIX . "review r
		LEFT JOIN " . DB_PREFIX . "product p ON (r.product_id = p.product_id)
		LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)
		LEFT JOIN " . DB_PREFIX . "review pp ON (r.parent_id = pp.review_id)
		WHERE p.product_id = '" . (int) $product_id . "'
		AND r.parent_id = '" . (int) $parent_id . "'
		AND pd.language_id = '" . (int) $this->config->get('config_language_id') . "'
		ORDER BY r.sorthex DESC
		LIMIT 1";
		$query = $this->db->query($sql);
		if (count($query->rows) > 0) {
			foreach ($query->rows as $review) {
				$sorthex        = $review['sorthex'];
				$sorthex_parent = $review['sorthex_parent'];
				$sorthex        = substr($sorthex, strlen($sorthex_parent), 4);
			}
			$sorthex = $sorthex_parent . (str_pad(dechex($sortdec = hexdec($sorthex) + 1), 4, "0", STR_PAD_LEFT));
		} else {
			if ($parent_id == 0) {
				$sorthex = '0000';
			} else {
				$queryparent = $this->db->query("
				SELECT c.sorthex
				FROM " . DB_PREFIX . "review c
				WHERE c.review_id = '" . (int) $parent_id . "'
				ORDER BY c.sorthex DESC
				LIMIT 1");
				if (count($queryparent->rows) > 0) {
					foreach ($queryparent->rows as $parent) {
						$sorthex = $parent['sorthex'];
					}
					$sorthex = $sorthex . "0000";
				}
			}
		}
		//$sorthex='0000';
		$sql = "INSERT INTO " . DB_PREFIX . "review SET
		author = '" . $this->db->escape($data['name']) . "',
		customer_id = '" . (int) $this->customer->getId() . "',
		product_id = '" . (int) $product_id . "',
		sorthex   = '" . $sorthex . "',
		parent_id = '" . (int) $parent_id . "',
		text = '" . $this->db->escape(strip_tags($data['text'])) . "',
		status = '" . $this->db->escape(strip_tags($data['status'])) . "',
		rating = '" . (int) $data['rating'] . "',
		date_added = NOW()";
		$this->db->query($sql);
		return $sql;
	}
	public function checkRate($data = array())
	{
		$sql   = "SELECT * FROM  " . DB_PREFIX . "rate_review rc
		WHERE
		customer_id = '" . $data['customer_id'] . "'
		AND
		review_id = '" . $data['comment_id'] . "'
		LIMIT 1";
		$query = $this->db->query($sql);
		return $query->rows;
	}

	public function getCategory($category_id)
	{
		$row = $this->cache->get('category.cati');
		if (!isset($row[$category_id])) {
			$query         = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c
			LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)
			LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id)
			WHERE c.category_id = '" . (int) $category_id . "' AND cd.language_id = '" . (int) $this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int) $this->config->get('config_store_id') . "'
			AND c.status = '1'
			");
			$row[$category_id] = $query->row;
			$this->cache->set('category.cati', $row[$category_id]);
		}
		return $row[$category_id];
	}

	public function getPathByProduct($product_id)
	{
		$product_id = (int) $product_id;
		if ($product_id < 1)
			return false;
		static $path = null;

		if (!is_array($path)) {
			$path = $this->cache->get('product.categories');
			if (!is_array($path))
				$path = array();
		}

		if (!isset($path[$product_id])) {
		$sql ="SELECT category_id FROM " . DB_PREFIX . "product_to_category
			WHERE product_id = '" . $product_id . "' ORDER BY category_id DESC LIMIT 1";
			$query            = $this->db->query($sql);
			$path[$product_id] = $this->getPathByCategory($query->num_rows ? (int) $query->row['category_id'] : 0);
			$this->cache->set('product.categories', $path);
		}
		return $path[$product_id];
	}


	public function getPathByCategory($category_id)
	{
		if (strpos($category_id, '_') !== false) {
			$abid    = explode('_', $category_id);
			$category_id = $abid[count($abid) - 1];
		}
		$category_id = (int) $category_id;
		if ($category_id < 1)
			return false;
		static $path = null;
		if (!is_array($path)) {
			$path = $this->cache->get('category.categories');
			if (!is_array($path))
				$path = array();
		}
		if (!isset($path[$category_id])) {
			$max_level = 10;
			$sql       = "SELECT td.name as name, CONCAT_WS('_'";
			for ($i = $max_level - 1; $i >= 0; --$i) {
				$sql .= ",t$i.category_id";
			}
			$sql .= ") AS path FROM " . DB_PREFIX . "category t0";
			for ($i = 1; $i < $max_level; ++$i) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "category t$i ON (t$i.category_id = t" . ($i - 1) . ".parent_id)";
			}
			$sql .= "LEFT JOIN " . DB_PREFIX . "category_description td ON ( td.category_id = t0.category_id )";
			$sql .= " WHERE t0.category_id = '" . $category_id . "'";
			$query                  = $this->db->query($sql);
			$path[$category_id]['path'] = $query->num_rows ? $query->row['path'] : false;
			$path[$category_id]['name'] = $query->num_rows ? $query->row['name'] : false;
			$this->cache->set('category.categories', $path);
		}
		return $path[$category_id];
	}




	public function checkRateNum($data = array())
	{
		$sql   = "SELECT *,
        COUNT(c.product_id) as rating_num
		FROM  " . DB_PREFIX . "review c
		LEFT JOIN " . DB_PREFIX . "rate_review rc ON (rc.review_id = c.review_id)
		WHERE
		rc.customer_id = '" . $data['customer_id'] . "'
		AND
		c.product_id = '" . $data['product_id'] . "'
		GROUP BY c.product_id
		LIMIT 1";
		$query = $this->db->query($sql);
		$query->row['sql'] = $sql;
		return $query->row;
	}


	public function getProductbyComment($data = array())
	{
		$sql   = "SELECT c.product_id as product_id
		FROM  " . DB_PREFIX . "review c
		WHERE
		c.review_id = '" . $data['comment_id'] . "'
		LIMIT 1";
		$query = $this->db->query($sql);

  	    $query->row['sql'] = $sql;

		return $query->row;

	}


	public function addRate($data = array())
	{
		$sql   = "INSERT INTO " . DB_PREFIX . "rate_review SET
		customer_id = '" . $data['customer_id'] . "',
		review_id = '" . $data['comment_id'] . "',
		delta = '" . $data['delta'] . "' ";
		$query = $this->db->query($sql);
		return $sql;
	}
	public function getCommentsByProductId($product_id, $start = 0, $limit = 20)
	{
		$sql   = "
		SELECT r.*, p.product_id, pd.name, p.price, p.image, r.date_added,  (r.sorthex) as hsort
		FROM " . DB_PREFIX . "review r
		LEFT JOIN " . DB_PREFIX . "product p ON (r.product_id = p.product_id)
		LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)
		WHERE p.product_id = '" . (int) $product_id . "'
		AND p.status = '1'
		AND r.status = '1'
		AND pd.language_id = '" . (int) $this->config->get('config_language_id') . "'
		";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	public function getRatesByProductId($product_id, $customer_id)
	{
		$sql   = "
			  SELECT
				rc.*,
				rc.review_id as cid,
                IF ((SELECT urc.delta  FROM " . DB_PREFIX . "rate_review urc WHERE urc.customer_id = '" . $customer_id . "' AND urc.review_id = rc.review_id)  < 0, -1 ,  IF ((SELECT urc.delta  FROM " . DB_PREFIX . "rate_review urc WHERE urc.customer_id = '" . $customer_id . "' AND urc.review_id = rc.review_id)  > 0, 1 ,  0 ) ) as customer_delta ,
      			COUNT(rc.review_id) as rate_count,
				SUM(rc.delta) as rate_delta,
				SUM(rc.delta > 0) as rate_delta_plus,
				SUM(rc.delta < 0) as rate_delta_minus
			   FROM
			     " . DB_PREFIX . "rate_review rc
			   LEFT JOIN " . DB_PREFIX . "review c on (rc.review_id = c.review_id)
			   LEFT JOIN " . DB_PREFIX . "product r on (r.product_id = c.product_id)
			   LEFT JOIN " . DB_PREFIX . "product_description pd ON (r.product_id = pd.product_id)
				   WHERE
			     r.product_id= " . (int) $product_id . "

				AND r.status = '1'
				AND c.status = '1'

				AND pd.language_id = '" . (int) $this->config->get('config_language_id') . "'
			    GROUP BY rc.review_id
			   ";
		$query = $this->db->query($sql);
		if (count($query->rows) > 0) {
			foreach ($query->rows as $rates) {
				$rate[$rates['cid']] = $rates;
			}
			return $rate;
		}
	}
	public function getRatesByCommentId($review_id)
	{
		$sql   = "
			  SELECT
				rc.*,
				rc.review_id as cid,
				COUNT(rc.review_id) as rate_count,
				SUM(rc.delta) as rate_delta,
				SUM(rc.delta > 0) as rate_delta_plus,
				SUM(rc.delta < 0) as rate_delta_minus
			   FROM
			     " . DB_PREFIX . "rate_review rc
			   WHERE
			     rc.review_id= " . (int) $review_id . "
			    GROUP BY rc.review_id
			   ";
		$query = $this->db->query($sql);

		if (count($query->rows) > 0) {
			foreach ($query->rows as $rates) {
				$rate[$rates['cid']] = $rates;
			}
		}
		return $query->rows;
	}
	public function getAverageRating($product_id)
	{
		$query = $this->db->query("SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review
		WHERE status = '1' AND product_id = '" . (int) $product_id . "' GROUP BY product_id");
		if (isset($query->row['total'])) {
			return (int) $query->row['total'];
		} else {
			return 0;
		}
	}
	public function getTotalComments()
	{
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r
		LEFT JOIN " . DB_PREFIX . "product p ON (r.product_id = p.product_id)
		WHERE p.date_available <= NOW() AND p.status = '1' AND r.status = '1'");
		return $query->row['total'];
	}
	public function getTotalCommentsByProductId($product_id)
	{
		$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r
		LEFT JOIN " . DB_PREFIX . "product p ON (r.product_id = p.product_id)
		LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id)
		WHERE p.product_id = '" . (int) $product_id . "'  AND p.status = '1' AND r.status = '1'
		AND pd.language_id = '" . (int) $this->config->get('config_language_id') . "'";

		$query = $this->db->query($sql);
		return $query->row['total'];
	}
}
?>