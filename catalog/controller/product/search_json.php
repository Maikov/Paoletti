<?php 
class ControllerProductSearchJson extends Controller { 	
	
	public function index() { 
  	
  	$this->language->load('product/search_json');
				
    $json = array();
		$this->data['products'] = array();
        
		if (isset($this->request->get['keyword'])) {
			
			$cache_json = $this->cache->get('search_json' . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id') . '.' . md5($this->request->get['keyword']));
			if ($cache_json) {
			  $this->response->setOutput(json_encode($cache_json));
			  return;
			}
			
			$this->load->model('catalog/product');
      
      $data_search = array(
        'filter_tag' => $this->request->get['keyword'],
        'filter_name' => $this->request->get['keyword'],
				'limit' => 10,
				'start' => 0
			);
			
      $product_total = $this->model_catalog_product->getTotalProducts($data_search);			      
			
			if ($product_total) {
				$this->load->model('tool/image');
				
        $results = $this->model_catalog_product->getProducts($data_search);		
        		
				foreach ($results as $result) {
				
				  if ($result['image']) {
					  $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				  } else {
					  $image = false;
				  }
				
				
				  if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					  $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				  } else {
					  $price = false;
				  }
				
				  if ((float)$result['special']) {
					  $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				  } else {
					  $special = false;
				  }	
				
				  if ($this->config->get('config_tax')) {
					  $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				  } else {
					  $tax = false;
				  }				
				
				  if ($this->config->get('config_review_status')) {
					  $rating = (int)$result['rating'];
				  } else {
					  $rating = false;
				  }
								
				  $this->data['products'][] = array(
					  'product_id'  => $result['product_id'],
					  'thumb'       => $image,
					  'name'        => htmlspecialchars_decode($result['name']),
					  //'sku'         => htmlspecialchars_decode($result['sku']),
					  //'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					  'price'       => $price,
					  //'price'        => $result['sku'],
					  //'special'      => $this->config->get('config_store_id'),
					  //'special'     => $special,
					  //'tax'         => $tax,
					  //'rating'      => $result['rating'],
					  //'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					  'href'        => str_replace('&amp;', '&', $this->url->link('product/product', 'product_id=' . $result['product_id']))
				  );

		    }		
			}
		}
		
		if(empty($this->data['products'])) {
			$this->data['products'][] = array(
			  'product_id'  => '',
			  'thumb'       => '',
				'name'        => $this->language->get('text_no_result'),
			  //'description' => '',
			  'price'       => '',
			  //'special'     => '',
			  //'tax'         => '',
			  //'rating'      => '',
			  //'reviews'     => '',
			  'href'        => ''
			);
		}
		else if($product_total > count($this->data['products'])){
			$remainder_cnt = $product_total - count($this->data['products']);
			if($remainder_cnt > 0) {
				$this->data['products'][] = array(
  			  'product_id'  => '',
  			  'thumb'       => '',
  				'name'        => $remainder_cnt . $this->language->get('more_results'),
  			  //'description' => '',
  			  'price'       => '',
  			  //'special'     => '',
  			  //'tax'         => '',
  			  //'rating'      => '',
  			  //'reviews'     => '',
  			  'href'        => str_replace('&amp;', '&', $this->url->link('product/search','filter_name='.$this->request->get['keyword']))					
				);
			}
		}
		
		$json = $this->data['products'];
		
		if($this->request->get['keyword']) {
	    $this->cache->set('search_json' . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$this->config->get('config_language_id') . '.' . md5($this->request->get['keyword']), $json);
		}
		
		$this->response->setOutput(json_encode($json));
		
  }   	
}
