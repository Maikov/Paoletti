<?php 
class ControllerLocalisationCurrency extends Controller {
	private $error = array();
 
	public function index() {
		$this->load->language('localisation/currency');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('localisation/currency');
		
		$this->getList();
	}

	public function insert() {
		$this->load->language('localisation/currency');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('localisation/currency');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_localisation_currency->addCurrency($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
			
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
						
			$this->redirect($this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function update() {
		$this->load->language('localisation/currency');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('localisation/currency');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_localisation_currency->editCurrency($this->request->get['currency_id'], $this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
						
			$this->redirect($this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('localisation/currency');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('localisation/currency');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $currency_id) {
				$this->model_localisation_currency->deleteCurrency($currency_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->redirect($this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	private function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'title';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$url = '';
	
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['insert'] = $this->url->link('localisation/currency/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('localisation/currency/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		
		$this->data['currencies'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		
		$currency_total = $this->model_localisation_currency->getTotalCurrencies();

		$results = $this->model_localisation_currency->getCurrencies($data);

		foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('localisation/currency/update', 'token=' . $this->session->data['token'] . '&currency_id=' . $result['currency_id'] . $url, 'SSL')
			);
						
			$this->data['currencies'][] = array(
				'currency_id'   => $result['currency_id'],
				'title'         => $result['title'] . (($result['code'] == $this->config->get('config_currency')) ? $this->language->get('text_default') : null),
				'code'          => $result['code'],
				'value'         => $result['value'],
				'date_modified' => date($this->language->get('date_format_short'), strtotime($result['date_modified'])),
				'selected'      => isset($this->request->post['selected']) && in_array($result['currency_id'], $this->request->post['selected']),
				'action'        => $action
			);
		}	
	
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_title'] = $this->language->get('column_title');
    	$this->data['column_code'] = $this->language->get('column_code');
		$this->data['column_value'] = $this->language->get('column_value');
		$this->data['column_date_modified'] = $this->language->get('column_date_modified');
		$this->data['column_action'] = $this->language->get('column_action');

		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$this->data['sort_title'] = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . '&sort=title' . $url, 'SSL');
		$this->data['sort_code'] = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . '&sort=code' . $url, 'SSL');
		$this->data['sort_value'] = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . '&sort=value' . $url, 'SSL');
		$this->data['sort_date_modified'] = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . '&sort=date_modified' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $currency_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$this->data['pagination'] = $pagination->render();
		
		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'localisation/currency_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}

	private function getForm() {
		$this->data['heading_title'] = $this->language->get('heading_title');
    	
		$this->data['text_enabled'] = $this->language->get('text_enabled');
    	$this->data['text_disabled'] = $this->language->get('text_disabled');
		
		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_code'] = $this->language->get('entry_code');
		$this->data['entry_value'] = $this->language->get('entry_value');
		$this->data['entry_symbol_left'] = $this->language->get('entry_symbol_left');
		$this->data['entry_symbol_right'] = $this->language->get('entry_symbol_right');
		$this->data['entry_decimal_place'] = $this->language->get('entry_decimal_place');
		$this->data['entry_status'] = $this->language->get('entry_status');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		$this->data['tab_general'] = $this->language->get('tab_general');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['title'])) {
			$this->data['error_title'] = $this->error['title'];
		} else {
			$this->data['error_title'] = '';
		}
		
 		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
		}
		
		$url = '';
			
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL'),      		
      		'separator' => ' :: '
   		);
		
		if (!isset($this->request->get['currency_id'])) {
			$this->data['action'] = $this->url->link('localisation/currency/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('localisation/currency/update', 'token=' . $this->session->data['token'] . '&currency_id=' . $this->request->get['currency_id'] . $url, 'SSL');
		}
				
		$this->data['cancel'] = $this->url->link('localisation/currency', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['currency_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$currency_info = $this->model_localisation_currency->getCurrency($this->request->get['currency_id']);
		}

		if (isset($this->request->post['title'])) {
			$this->data['title'] = $this->request->post['title'];
		} elseif (!empty($currency_info)) {
			$this->data['title'] = $currency_info['title'];
		} else {
			$this->data['title'] = '';
		}

		if (isset($this->request->post['code'])) {
			$this->data['code'] = $this->request->post['code'];
		} elseif (!empty($currency_info)) {
			$this->data['code'] = $currency_info['code'];
		} else {
			$this->data['code'] = '';
		}

		if (isset($this->request->post['symbol_left'])) {
			$this->data['symbol_left'] = $this->request->post['symbol_left'];
		} elseif (!empty($currency_info)) {
			$this->data['symbol_left'] = $currency_info['symbol_left'];
		} else {
			$this->data['symbol_left'] = '';
		}

		if (isset($this->request->post['symbol_right'])) {
			$this->data['symbol_right'] = $this->request->post['symbol_right'];
		} elseif (!empty($currency_info)) {
			$this->data['symbol_right'] = $currency_info['symbol_right'];
		} else {
			$this->data['symbol_right'] = '';
		}

		if (isset($this->request->post['decimal_place'])) {
			$this->data['decimal_place'] = $this->request->post['decimal_place'];
		} elseif (!empty($currency_info)) {
			$this->data['decimal_place'] = $currency_info['decimal_place'];
		} else {
			$this->data['decimal_place'] = '';
		}

		if (isset($this->request->post['value'])) {
			$this->data['value'] = $this->request->post['value'];
		} elseif (!empty($currency_info)) {
			$this->data['value'] = $currency_info['value'];
		} else {
			$this->data['value'] = '';
		}

    	if (isset($this->request->post['status'])) {
      		$this->data['status'] = $this->request->post['status'];
    	} elseif (!empty($currency_info)) {
			$this->data['status'] = $currency_info['status'];
		} else {
      		$this->data['status'] = '';
    	}

$curl = curl_init('http://OpenShop.org.ua/currencies_list/');
        curl_setopt($curl, CURLOPT_TIMEOUT, 2);
        curl_setopt($curl, CURLOPT_FAILONERROR, 1);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $this->data['currencies'] = curl_exec($curl);
        if (!$this->data['currencies']) $this->data['currencies']='<option value="AED/ د.إ">AED</option>
<option value="AFN/ ؋">AFN</option>
<option value="ALL/ L">ALL</option>
<option value="AMD/ դր.">AMD</option>
<option value="ANG/ ƒ">ANG</option>
<option value="AOA/ Kz">AOA</option>
<option value="ARS\$">ARS</option>
<option value="AUD\$">AUD</option>
<option value="AWG/ ƒ">AWG</option>
<option value="BAM/ KM">BAM</option>
<option value="BBD\$">BBD</option>
<option value="BDT/ ৳">BDT</option>
<option value="BGN/ лв">BGN</option>
<option value="BHD/ .د.ب">BHD</option>
<option value="BIF/ Fr">BIF</option>
<option value="BMD\$">BMD</option>
<option value="BND\$">BND</option>
<option value="BOB/ Bs.">BOB</option>
<option value="BRL/ R$">BRL</option>
<option value="BSD\$">BSD</option>
<option value="BTN/ Nu.">BTN</option>
<option value="BWP/ P">BWP</option>
<option value="BYR/ Br">BYR</option>
<option value="BZD\$">BZD</option>
<option value="CAD\$">CAD</option>
<option value="CDF/ Fr">CDF</option>
<option value="CHF/ Fr">CHF</option>
<option value="CLP\$">CLP</option>
<option value="CNY/ ¥">CNY</option>
<option value="COP\$">COP</option>
<option value="CRC/ ₡">CRC</option>
<option value="CUC\$">CUC</option>
<option value="CUP\$">CUP</option>
<option value="CVE/ Esc">CVE</option>
<option value="CZK/ Kč">CZK</option>
<option value="DJF/ Fr">DJF</option>
<option value="DKK/ kr">DKK</option>
<option value="DOP\$">DOP</option>
<option value="DZD/ د.ج">DZD</option>
<option value="EGP\£">EGP</option>
<option value="ERN/ Nfk">ERN</option>
<option value="ETB/ Br">ETB</option>
<option value="EUR\€">EUR</option>
<option value="FJD\$">FJD</option>
<option value="FKP\£">FKP</option>
<option value="GBP\£">GBP</option>
<option value="GEL/ ლ">GEL</option>
<option value="GHS/ ₵">GHS</option>
<option value="GIP\£">GIP</option>
<option value="GMD/ D">GMD</option>
<option value="GNF/ Fr">GNF</option>
<option value="GTQ/ Q">GTQ</option>
<option value="GYD\$">GYD</option>
<option value="HKD\$">HKD</option>
<option value="HNL/ L">HNL</option>
<option value="HRK/ kn">HRK</option>
<option value="HTG/ G">HTG</option>
<option value="HUF/ Ft">HUF</option>
<option value="IDR/ Rp">IDR</option>
<option value="ILS/ ₪">ILS</option>
<option value="IQD/ ع.د">IQD</option>
<option value="IRR/ ﷼">IRR</option>
<option value="ISK/ kr">ISK</option>
<option value="JMD\$">JMD</option>
<option value="JOD/ د.ا">JOD</option>
<option value="JOD/ د.ا">JOD</option>
<option value="JPY/ ¥">JPY</option>
<option value="KES/ Sh">KES</option>
<option value="KGS/ лв">KGS</option>
<option value="KHR/ ៛">KHR</option>
<option value="KMF/ Fr">KMF</option>
<option value="KPW/ ₩">KPW</option>
<option value="KRW/ ₩">KRW</option>
<option value="KWD/ د.ك">KWD</option>
<option value="KYD\$">KYD</option>
<option value="KZT/ ₸">KZT</option>
<option value="LAK/ ₭">LAK</option>
<option value="LBP/ ل.ل">LBP</option>
<option value="LKR/ Rs">LKR</option>
<option value="LRD\$">LRD</option>
<option value="LSL/ L">LSL</option>
<option value="LTL/ Lt">LTL</option>
<option value="LVL/ Ls">LVL</option>
<option value="LYD/ ل.د">LYD</option>
<option value="MDL/ L">MDL</option>
<option value="MGA/ Ar">MGA</option>
<option value="MKD/ ден">MKD</option>
<option value="MMK/ K">MMK</option>
<option value="MNT/ ₮">MNT</option>
<option value="MOP/ P">MOP</option>
<option value="MRO/ UM">MRO</option>
<option value="MUR/ ₨">MUR</option>
<option value="MVR/ .ރ">MVR</option>
<option value="MWK/ MK">MWK</option>
<option value="MXN\$">MXN</option>
<option value="MYR/ RM">MYR</option>
<option value="MZN/ MT">MZN</option>
<option value="NAD\$">NAD</option>
<option value="NGN/ ₦">NGN</option>
<option value="NIO/ C$">NIO</option>
<option value="NOK/ kr">NOK</option>
<option value="NPR/ ₨">NPR</option>
<option value="NZD\$">NZD</option>
<option value="OMR/ ر.ع.">OMR</option>
<option value="PAB/ B/ .">PAB</option>
<option value="PEN/ S/ .">PEN</option>
<option value="PGK/ K">PGK</option>
<option value="PHP/ ₱">PHP</option>
<option value="PKR/ ₨">PKR</option>
<option value="PLN/ zł">PLN</option>
<option value="PYG/ ₲">PYG</option>
<option value="QAR/ ر.ق">QAR</option>
<option value="RON/ L">RON</option>
<option value="RSD/ din.">RSD</option>
<option value="RUB/ руб.">RUB</option>
<option value="RWF/ Fr">RWF</option>
<option value="SAR/ ر.س">SAR</option>
<option value="SBD\$">SBD</option>
<option value="SCR/ ₨">SCR</option>
<option value="SDG\£">SDG</option>
<option value="SEK/ kr">SEK</option>
<option value="SGD\$">SGD</option>
<option value="SHP\£">SHP</option>
<option value="SLL/ Le">SLL</option>
<option value="SOS/ Sh">SOS</option>
<option value="SRD\$">SRD</option>
<option value="SSP\£">SSP</option>
<option value="STD/ Db">STD</option>
<option value="SVC/ ₡">SVC</option>
<option value="SYP\£">SYP</option>
<option value="SZL/ L">SZL</option>
<option value="THB/ ฿">THB</option>
<option value="TJS/ ЅМ">TJS</option>
<option value="TMT/ m">TMT</option>
<option value="TND/ د.ت">TND</option>
<option value="TOP/ T$">TOP</option>
<option value="TTD\$">TTD</option>
<option value="TWD\$">TWD</option>
<option value="TZS/ Sh">TZS</option>
<option value="UAH/ грн">UAH</option>
<option value="UGX/ Sh">UGX</option>
<option value="USD\$" selected="1">USD</option>
<option value="UYU\$">UYU</option>
<option value="UZS/ лв">UZS</option>
<option value="VEF/ Bs">VEF</option>
<option value="VND/ ₫">VND</option>
<option value="VUV/ Vt">VUV</option>
<option value="WST/ T">WST</option>
<option value="XAF/ Fr">XAF</option>
<option value="XCD\$">XCD</option>
<option value="XOF/ Fr">XOF</option>
<option value="XPF/ Fr">XPF</option>
<option value="YER/ ﷼">YER</option>
<option value="ZAR/ R">ZAR</option>
<option value="ZMK/ ZK">ZMK</option>
';
		$this->template = 'localisation/currency_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validateForm() { 
		if (!$this->user->hasPermission('modify', 'localisation/currency')) { 
			$this->error['warning'] = $this->language->get('error_permission');
		} 

		if ((utf8_strlen($this->request->post['title']) < 3) || (utf8_strlen($this->request->post['title']) > 32)) {
			$this->error['title'] = $this->language->get('error_title');
		}

		if (utf8_strlen($this->request->post['code']) != 3) {
			$this->error['code'] = $this->language->get('error_code');
		}

		if (!$this->error) { 
			return true;
		} else {
			return false;
		}
	}

	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'localisation/currency')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		$this->load->model('setting/store');
		$this->load->model('sale/order');
		
		foreach ($this->request->post['selected'] as $currency_id) {
			$currency_info = $this->model_localisation_currency->getCurrency($currency_id);

			if ($currency_info) {
				if ($this->config->get('config_currency') == $currency_info['code']) {
					$this->error['warning'] = $this->language->get('error_default');
				}
				
				$store_total = $this->model_setting_store->getTotalStoresByCurrency($currency_info['code']);
	
				if ($store_total) {
					$this->error['warning'] = sprintf($this->language->get('error_store'), $store_total);
				}					
			}
			
			$order_total = $this->model_sale_order->getTotalOrdersByCurrencyId($currency_id);

			if ($order_total) {
				$this->error['warning'] = sprintf($this->language->get('error_order'), $order_total);
			}					
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}	
}
?>