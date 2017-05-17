<?php  
class ControllerModuleFacebook extends Controller {
	
	protected function index($setting) {
		static $module = 0;
		
		$this->data['width'] = $setting['width'];
		
		$this->data['numpost'] = $setting['numpost'];
		
		if(($setting['urltype']=="1") or strpos($_SERVER["REQUEST_URI"],"route=common/home")) {
			$this->data['siteurl'] = HTTP_SERVER;
		} else if($setting['urltype']=="2") {
            $this->data['siteurl'] = $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
		} else {
			$this->data['siteurl'] = HTTP_SERVER;
		}
		
		$this->data['colorscheme'] = $setting['colorscheme'];
			
		$this->data['module'] = $module++;

        $this->data['language_code'] = $this->session->data['language'];

        $this->load->model('localisation/language');
        $langs = $this->model_localisation_language->getLanguages();
        foreach ($langs as $lang)
            if ($lang['code']==$this->session->data['language']) $locale=$lang['locale'];

        $pos=strpos($locale,'_');
        if ($pos) $locale=substr($locale,$pos-2,2).'_'.substr($locale,$pos+1,2);
            else $locale='en_US';
        $this->data['locale'] = $locale;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/facebook.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/facebook.tpl';
		} else {
			$this->template = 'default/template/module/facebook.tpl';
		}
		
		$this->render();
	}
}
?>