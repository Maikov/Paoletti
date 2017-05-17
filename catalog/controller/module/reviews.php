<?php
class ControllerModuleReviews extends Controller {
	protected function index($setting) {
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
		
		$this->load->model('module/reviews');
        $this->load->language('module/reviews');

      	$this->data['header'] = $this->language->get('heading_title');

		$this->data['reviews'] = array();

		if ($setting['limit'] > 0) {
			$limit = $setting['limit'];
		} else {
			$limit = 4;
		}
		
		if ($setting['text_limit'] > 0) {
			$text_limit = $setting['text_limit'];
		} else {
			$text_limit = 50;
		}
		
		if ($setting['type'] == 'latest') {
			$results = $this->model_module_reviews->getLatestReviews($limit);
		} else {
			$results = $this->model_module_reviews->getRandomReviews($limit);
		}

		foreach ($results as $result) {
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}

   			$product_id = false;
   			$product = false;
   			$prod_thumb = false;
   			$prod_name = false;
   			$prod_model = false;
   			$prod_href = false;
			
			if ($result['product_id']) {
				$product = $this->model_catalog_product->getProduct($result['product_id']);
				if ($product['image']) {
       				$prod_thumb = $this->model_tool_image->resize($product['image'], $setting['image_width'], $setting['image_height']);
				}
				$product_id = $product['product_id'];
    			$prod_name = $product['name'];
    			$prod_model = $product['model'];
    			$prod_href = $this->url->link('product/product', 'product_id=' . $product['product_id']);
			}

            if (strlen($result['text'])>$text_limit)
                $result['text'] = mb_substr($result['text'], 0, $text_limit,'utf-8') . '...';

			$this->data['reviews'][] = array(
				'review_id'   => $result['review_id'],
				'rating'      => $result['rating'],
                'description' => $result['text'],
				'date_added'  => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'href'        => $this->url->link('product/product', 'product_id=' . $product['product_id']),
				'author'      => $result['author'],
				'product_id'  => $product_id,
  				'prod_thumb'  => $prod_thumb,
  				'prod_name'   => $prod_name,
  				'prod_model'  => $prod_model,
  				'prod_href'   => $prod_href
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/reviews.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/reviews.tpl';
		} else {
			$this->template = 'default/template/module/reviews.tpl';
		}

		$this->render();
	}
}
?>