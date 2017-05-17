<?php
class ControllerRecordTreeComments extends Controller
{
	private $error = array();
	public function rdate($param, $time = 0)
	{
		$this->language->load('record/blog');
		if (intval($time) == 0)
			$time = time();
		$MonthNames = array(
			$this->language->get('text_january'),
			$this->language->get('text_february'),
			$this->language->get('text_march'),
			$this->language->get('text_april'),
			$this->language->get('text_may'),
			$this->language->get('text_june'),
			$this->language->get('text_july'),
			$this->language->get('text_august'),
			$this->language->get('text_september'),
			$this->language->get('text_october'),
			$this->language->get('text_november'),
			$this->language->get('text_december')
		);
		if (strpos($param, 'M') === false)
			return date($param, $time);
		else {
			$str_begin  = date(mb_substr($param, 0, mb_strpos($param, 'M')), $time);
			$str_middle = $MonthNames[date('n', $time) - 1];
			$str_end    = date(mb_substr($param, mb_strpos($param, 'M') + 1, mb_strlen($param)), $time);
			$str_date   = $str_begin . $str_middle . $str_end;
			return $str_date;
		}
	}
	public function comment()
	{
  	  if (isset($this->request->get['product_id'])) {
		$this->language->load('record/record');
		$this->load->model('catalog/treecomments');
		$this->data['entry_sorting']      = $this->language->get('entry_sorting');
		$this->data['text_sorting_desc']  = $this->language->get('text_sorting_desc');
		$this->data['text_sorting_asc']   = $this->language->get('text_sorting_asc');
		$this->data['text_rollup']        = $this->language->get('text_rollup');
		$this->data['text_rollup_down']   = $this->language->get('text_rollup_down');
		$this->data['text_no_comments']   = $this->language->get('text_no_comments');
		$this->data['text_reply_button']  = $this->language->get('text_reply_button');
		$this->data['text_edit_button']   = $this->language->get('text_edit_button');
		$this->data['text_delete_button'] = $this->language->get('text_delete_button');

			if ($this->customer->isLogged()) {
				$this->data['text_login']     = $this->customer->getFirstName() . " " . $this->customer->getLastName();
				$this->data['captcha_status'] = false;
				$this->data['customer_id']    = $this->customer->getId();
			} else {
				$this->data['text_login']     = $this->language->get('text_anonymus');
				$this->data['captcha_status'] = true;
			}

		$this->load->model('catalog/product');


		$product_info = $this->model_catalog_product->getProduct($this->request->get['product_id']);



		$b_path    = $this->model_catalog_treecomments->getPathByProduct($this->request->get['product_id']);



		$category_path = $b_path['path'];
		if (isset($category_path)) {
			if (strpos($category_path, '_') !== false) {
				$abid    = explode('_', $category_path);
				$category_id = $abid[count($abid) - 1];
			} else {
				$category_id = (int) $category_path;
			}
			$category_id = (int) $category_id;
		}
        if (!isset($category_id)) $category_id = 0;

		$category_info = $this->model_catalog_treecomments->getCategory($category_id);


		if (isset($category_info['design']) && $category_info['design'] != '') {
			$this->data['category_design'] = unserialize($category_info['design']);
		} else {
			$this->data['category_design'] = Array();
		}

		if (isset($this->request->get['tracking'])) {
			$tracking = $this->request->get['tracking'];
		} else {
			$tracking = '';
		}

		if ($tracking != '') {

         	$parts = explode('_', trim(utf8_strtolower($tracking)));
			foreach ($parts as $num => $val) {

				list($getquery, $getpar) = explode("-", $val);
			    $this->request->get[$getquery] = $getpar;
			}
		}




		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		$this->data['page'] = $page;

		$this->data['sorting'] = 'desc';



		if (isset($this->request->post['thislist'])) {
			$str  = base64_decode($this->request->post['thislist']);
			$this->data['thislist'] = unserialize($str);
		} else {
			$this->data['thislist'] = Array();
		}

         $thislist = $this->data['thislist'];
         $this->data['record_comment'] = $thislist;

		 if (isset($thislist['order_ad']) && $thislist['order_ad']!='') {
			$this->data['sorting'] = strtolower($thislist['order_ad']);
		 }


		if (isset($this->request->get['sorting'])) {
			if ($this->request->get['sorting'] == 'none') {
				$this->data['sorting'] = $this->data['sorting'];
			} else
				$this->data['sorting'] = $this->request->get['sorting'];
		}




		$this->data['comments']          = array();
		$comment_total                   = $this->model_catalog_treecomments->getTotalCommentsByProductId($this->request->get['product_id']);


        if (isset($thislist['number_comments']))
		$this->data['number_comments'] = $thislist['number_comments'];
		else
		$this->data['number_comments'] = '';



		if ($this->data['number_comments'] == '')
			$this->data['number_comments'] = 10;

		$results = $this->model_catalog_treecomments->getCommentsByProductId($this->request->get['product_id'], ($page - 1) * $this->data['number_comments'], $this->data['number_comments']);

		if ($this->customer->isLogged()) {
			$customer_id = $this->customer->getId();
		} else {
			$customer_id = -1;
		}
		$results_rates = $this->model_catalog_treecomments->getRatesByProductId($this->request->get['product_id'], $customer_id);




		if ($customer_id == -1)
			$customer_id = false;
		if (count($results) > 0) {
			function sdesc($a, $b)
			{
				return (strcmp($a['sorthex'], $b['sorthex']));
			}
			$resa = NULL;
			foreach ($results as $num => $res1) {
				$resa[$num] = $res1;
				if (isset($results_rates[$res1['review_id']])) {
					$resa[$num]['delta']            = $results_rates[$res1['review_id']]['rate_delta'];
					$resa[$num]['rate_count']       = $results_rates[$res1['review_id']]['rate_count'];
					$resa[$num]['rate_count_plus']  = $results_rates[$res1['review_id']]['rate_delta_plus'];
					$resa[$num]['rate_count_minus'] = $results_rates[$res1['review_id']]['rate_delta_minus'];
					$resa[$num]['customer_delta']   = $results_rates[$res1['review_id']]['customer_delta'];
				} else {
					$resa[$num]['customer_delta']   = 0;
					$resa[$num]['delta']            = 0;
					$resa[$num]['rate_count']       = 0;
					$resa[$num]['rate_count_plus']  = 0;
					$resa[$num]['rate_count_minus'] = 0;
				}
				$resa[$num]['hsort'] = '';
				$mmm                 = NULL;
				$kkk                 = '';
				$wh                  = strlen($res1['sorthex']) / 4;
				for ($i = 0; $i < $wh; $i++) {
					$mmm[$i] = str_pad(dechex(65535 - hexdec(substr($res1['sorthex'], $i * 4, 4))), 4, "F", STR_PAD_LEFT);
					$sortmy  = substr($res1['sorthex'], $i * 4, 4);
					$kkk     = $kkk . $sortmy;
				}
				$ssorthex = '';
				if (is_array($mmm)) {
					foreach ($mmm as $num1 => $val) {
						$ssorthex = $ssorthex . $val;
					}
				}
				if ($this->data['sorting'] != 'asc') {
					$resa[$num]['sorthex'] = $ssorthex;
				} else {
					$resa[$num]['sorthex'] = $kkk;
				}
				$resa[$num]['hsort'] = $kkk;
			}
			$results = NULL;
			$results = $resa;
			uasort($results, 'sdesc');
			$i = 0;
			foreach ($results as $num => $result) {
			{
				if (!isset($result['date_available'])) $result['date_available']=$result['date_added'];
					if ($this->rdate($this->language->get('text_date')) == $this->rdate($this->language->get('text_date'), strtotime($result['date_available']))) {
						$date_str = $this->language->get('text_today');
					} else {
						$date_str = $this->language->get('text_date');
					}
					$date_added               = $this->rdate($date_str . $this->language->get('text_hours'), strtotime($result['date_added']));
					$this->data['comments'][] = array(
						'comment_id' => $result['review_id'],
						'sorthex' => $result['sorthex'],
						'customer_id' => $result['customer_id'],
						'customer' => $customer_id,
						'customer_delta' => $result['customer_delta'],
						'level' => (strlen($result['sorthex']) / 4) - 1,
						'parent_id' => $result['parent_id'],
						'author' => $result['author'],
						'text' => strip_tags($result['text']),
						'rating' => (int) $result['rating'],
						'hsort' => $result['hsort'],
						'myarray' => $mmm,
						'delta' => $result['delta'],
						'rate_count' => $result['rate_count'],
						'rate_count_plus' => $result['rate_count_plus'],
						'rate_count_minus' => $result['rate_count_minus'],
						'comments' => sprintf($this->language->get('text_comments'), (int) $comment_total),
						'date_added' => $date_added
					);
				}
				$i++;
			}
		}



		if (!function_exists('compare')) {
			function compare($a, $b)
			{
				if ($a['comment_id'] > $b['comment_id'])
					return 1;
				if ($b['comment_id'] > $a['comment_id'])
					return -1;
				return 0;
			}
		}
		if (!function_exists('compared')) {
			function compared($a, $b)
			{
				if ($a['comment_id'] > $b['comment_id'])
					return -1;
				if ($b['comment_id'] > $a['comment_id'])
					return 1;
				return 0;
			}
		}
		if (!function_exists('my_sort_div')) {
			function my_sort_div($data, $parent = 0, $sorting, $lev = -1)
			{
				$arr = $data[$parent];
				if ($sorting == 'asc')
					usort($arr, 'compare');
				if ($sorting == 'desc')
					usort($arr, 'compared');
				$lev = $lev + 1;
				for ($i = 0; $i < count($arr); $i++) {
					$arr[$i]['level']               = $lev;
					$z[]                            = $arr[$i];
					$z[count($z) - 1]['flag_start'] = 1;
					$z[count($z) - 1]['flag_end']   = 0;
					if (isset($data[$arr[$i]['comment_id']])) {
						$m = my_sort_div($data, $arr[$i]['comment_id'], $sorting, $lev);
						$z = array_merge($z, $m);
					}
					if (isset($z[count($z) - 1]['flag_end']))
						$z[count($z) - 1]['flag_end']++;
					else
						$z[count($z) - 1]['flag_end'] = 1;
				}
				return $z;
			}
		}
		if (count($this->data['comments']) > 0) {
			for ($i = 0, $c = count($this->data['comments']); $i < $c; $i++) {
				$new_arr[$this->data['comments'][$i]['parent_id']][] = $this->data['comments'][$i];
			}
			$mycomments = my_sort_div($new_arr, 0, $this->data['sorting']);
			$i          = 0;
			foreach ($mycomments as $num => $result) {
				if (($i >= (($page - 1) * $this->data['number_comments'])) && ($i < ((($page - 1) * $this->data['number_comments']) + $this->data['number_comments']))) {
					$this->data['mycomments'][$i] = $result;
				}
				$i++;
			}
		} else {
			$this->data['mycomments'] = Array();
		}
		$this->data['comments']   = $this->data['mycomments'];
		$pagination               = new Pagination();
		$pagination->total        = $comment_total;
		$pagination->page         = $page;
		$pagination->limit        = $this->data['number_comments'];
		$pagination->text         = $this->language->get('text_pagination');
		//$pagination->url          = $this->url->link('product/product', 'product_id=' . $this->request->get['product_id']) . '?sorting=' . $this->data['sorting'] . '&page={page}';
		$pagination->url          = $this->url->link('product/product', 'product_id=' . $this->request->get['product_id'] . '&tracking=sorting-' . $this->data['sorting'] . '_page-{page}');

		//$pagination->url          = $this->url->link('product/product', 'product_id=' . $this->request->get['product_id'] . '&sorting=' . $this->data['sorting'] . '&page={page}');
		//$pagination->url          = $this->url->link('product/product', 'product_id=' . $this->request->get['product_id']);
		$this->data['pagination'] = $pagination->render();



		if (isset($this->data['category_design']['blog_template_comment']) && $this->data['category_design']['blog_template_comment'] != '') {
			$template = $this->data['category_design']['blog_template_comment'];
		} else {
			$template = 'treecomment.tpl';
		}



		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/record/' . $template)) {
			$this->template = $this->config->get('config_template') . '/template/record/' . $template;
		} else {
			if (file_exists(DIR_TEMPLATE . 'default/template/record/' . $template)) {
				$this->template = 'default/template/record/' . $template;
			} else {
				$this->template = 'default/template/record/treecomment.tpl';
			}
		}
		$this->data['text_wait']            = $this->language->get('text_wait');
		$this->data['theme'] = $this->config->get('config_template');

		$this->data['mylist']        = $this->config->get('mylist');

        if (isset($this->request->get['mylist_position'])) {
			$this->data['mylist_position'] = $this->request->get['mylist_position'];
		} else {
			$this->data['mylist_position'] = 0;
		}

		$html = $this->render();

		if (isset($this->request->get['ajax']) && $this->request->get['ajax']==1) {
		$this->response->setOutput($html);
		} else {
		  return $html;
		}

      }
	}



	public function write()
	{
		$json = array();
		$this->language->load('record/record');
		$this->load->model('catalog/treecomments');
		if (isset($this->request->get['product_id'])) {
			$product_id = $this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->get['parent'])) {
			if ($this->request->get['parent'] == '')
				$this->request->get['parent'] = 0;
		} else {
			$this->request->get['parent'] = 0;
		}
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
		}
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}
		if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
			$captcha_status    = false;
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
			$captcha_status    = true;
		}

       /*
		$record_blog = $this->model_catalog_treecomments->getProductCategories($product_id);
		if (isset($record_blog) && count($record_blog) > 0) {
			foreach ($record_blog as $k => $category_id) {
				$data  = array(
					'filter_category_id' => $category_id,
					'sort' => $sort,
					'order' => $order,
					'start' => ($page - 1) * $limit,
					'limit' => $limit
				);
				$cache = md5(http_build_query($data));
				$key   = 'product.' . (int) $this->config->get('config_language_id') . '.' . (int) $this->config->get('config_store_id') . '.' . (int) $customer_group_id . '.' . $cache;
				$this->cache->delete($key);
			}
		}

         */

        $this->data['mylist']        = $this->config->get('mylist');

        if (isset($this->request->get['mylist_position'])) {
			$mylist_position = $this->request->get['mylist_position'];
		} else {
			$mylist_position = 0;
		}

        $set_thislist = Array('status'=>'1', 'status_reg'=>'0', 'status_now' => '0');

		if (isset($this->data['mylist'][$mylist_position]) && !empty($this->data['mylist'][$mylist_position])) {
		 $thislist =$this->data['mylist'][$mylist_position];
		} else {
		 $thislist = Array('status'=>'1', 'status_reg'=>'0', 'status_now' => '0');
		}



        $thislist = array_merge($set_thislist, $thislist);

         $k = serialize($thislist);


		$this->data['comment_status']                 = $thislist['status'];
		$this->data['comment_status_reg']             = $thislist['status_reg'];
		$this->data['comment_status_now']             = $thislist['status_now'];
		$this->data['comment']                        = $thislist;
		$this->request->post['comment']['status']     = $thislist['status'];
		$this->request->post['comment']['status_reg'] = $thislist['status_reg'];
		$this->request->post['comment']['status_now'] = $thislist['status_now'];
		$this->request->post['status']                = $thislist['status_now'];

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 33)) {
			$json['error'] = $this->language->get('error_name');
		}
		if ((utf8_strlen($this->request->post['text']) < 5) || (utf8_strlen($this->request->post['text']) > 1000)) {
			$json['error'] = $this->language->get('error_text');
		}
		if (!$this->request->post['rating']) {
			$json['error'] = $this->language->get('error_rating');
		}
		if (!isset($this->session->data['captcha']) || (strtolower($this->session->data['captcha']) != strtolower($this->request->post['captcha']))) {
			if ($captcha_status) {
				$json['error'] = $this->language->get('error_captcha');
			}
		}
		if ($thislist['status_reg'] && !$this->customer->isLogged()) {
			$json['error'] = $this->language->get('error_reg');
		}
		if ($this->customer->isLogged()) {
			$json['login']       = $this->customer->getFirstName() . " " . $this->customer->getLastName();
			$json['customer_id'] = $this->data['customer_id'] = $this->customer->getId();
		} else {
			$json['login'] = $this->language->get('text_anonymus');
		}
		$this->load->model('catalog/treecomments');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && !isset($json['error'])) {

			$sql = $this->model_catalog_treecomments->addComment($this->request->get['product_id'], $this->request->post, $this->request->get);

			$this->data['comment_count'] = $this->model_catalog_treecomments->getTotalCommentsByProductId($product_id);

//*****************************************************************!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
			$json['comment_count']       = $this->data['comment_count']  ;

			if ($thislist['status_now']) {
				$json['success'] = $this->language->get('text_success_now');
			} else {
				$json['success'] = $this->language->get('text_success')  ;
			}
		}
		$this->response->setOutput(json_encode($json));
	}


	public function comments_vote()
	{
		$json             = array();
		$json['messages'] = 'ok';

		$this->language->load('record/record');
		$this->load->model('catalog/treecomments');
		if (isset($this->request->post['comment_id'])) {
			$comment_id = $this->request->post['comment_id'];
		} else {
			$comment_id = 0;
		}

		if (isset($this->request->post['delta'])) {
			$delta = $this->request->post['delta'];
			if ($delta > 1) {
				$delta = 1;
			}
			if ($delta < -1) {
				$delta = -1;
			}
		} else {
			$delta = 0;
		}
		if ($this->customer->isLogged()) {
			$customer_id = $this->customer->getId();
		} else {
			$customer_id = false;
		}
		$json['customer_id']       = $customer_id;
		$this->data['comment_id']  = $comment_id;
		$this->data['customer_id'] = $customer_id;
		$this->data['delta']       = $delta;


        $this->data['mylist']        = $this->config->get('mylist');

        if (isset($this->request->get['mylist_position'])) {
			$mylist_position = $this->request->get['mylist_position'];
		} else {
			$mylist_position = 0;
		}

        $set_thislist = Array('status'=>'1', 'status_reg'=>'0', 'status_now' => '0', 'rating_num'=>'');

		if (isset($this->data['mylist'][$mylist_position]) && !empty($this->data['mylist'][$mylist_position])) {
		 $thislist =$this->data['mylist'][$mylist_position];
		} else {
		 $thislist = Array('status'=>'1', 'status_reg'=>'0', 'status_now' => '0', 'rating_num'=>'');
		}



        $thislist = array_merge($set_thislist, $thislist);



		$this->load->model('catalog/treecomments');
		$product_info = $this->model_catalog_treecomments->getProductbyComment($this->data);


        if (isset($product_info['product_id']) && $product_info['product_id']!='') {
        	$this->data['product_id'] = $product_info['product_id'];
        } else {
            $this->data['product_id']='';
        }

        $check_rate 	= $this->model_catalog_treecomments->checkRate($this->data);
        $check_rate_num = $this->model_catalog_treecomments->checkRateNum($this->data);

		$rating_num = 0;

		//$thislist = unserialize($this->registry->get('thislist'));


	            $record_settings = $thislist;

	             if (isset($record_settings['rating_num']) &&  $record_settings['rating_num']!='') {
	              $rating_num =  $record_settings['rating_num'];
	             } else {
	               $rating_num = 10000;
	             }







        if (isset($check_rate_num['rating_num']) && $check_rate_num['rating_num']!='') {
          $voted_num = $check_rate_num['rating_num'];
        } else {
          $voted_num = $rating_num - 1;
        }


		if ((count($check_rate) < 1) && $customer_id && ($voted_num < $rating_num)) {

			$this->model_catalog_treecomments->addRate($this->data);

			$rate_info       = $this->model_catalog_treecomments->getRatesByCommentId($comment_id);

			$json['success'] = $rate_info[0];
			$plus            = "";

			if ($json['success']['rate_delta'] > 0)    $plus = "+";

			$json['success']['rate_delta'] = sprintf($plus."%d", $json['success']['rate_delta']);

		} else {


		 		//			 $json['success']['rate_delta'] =2;
//return $this->response->setOutput(json_encode($json));


			if ($customer_id) {
				$json['messages'] = '';
				$json['success']  = $this->language->get('text_voted');
			} else {
				$json['messages'] = '';
				$json['success']  = $this->language->get('text_vote_reg');
			}
		}
		return $this->response->setOutput(json_encode($json));
	}
	public function browser()
	{
		$bra = 'ie';
		if (stristr($_SERVER['HTTP_USER_AGENT'], 'Firefox'))
			$bra = 'firefox';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'Chrome'))
			$bra = 'chrome';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'Safari'))
			$bra = 'safari';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'Opera'))
			$bra = 'opera';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'MSIE 6.0'))
			$bra = 'ieO';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'MSIE 7.0'))
			$bra = 'ieO';
		elseif (stristr($_SERVER['HTTP_USER_AGENT'], 'MSIE 8.0'))
			$bra = 'ieO';
		return $bra;
	}
}
?>