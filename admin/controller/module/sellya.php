<?php
class ControllerModuleSellya extends Controller {
	private $error = array();
	private $_name = 'sellya';	
	
	public function index() {
		$language = $this->load->language('module/sellya');
        $this->data = array_merge($this->data, $language);

		
        $this->document->setTitle($this->language->get('heading_title'));
		
        $this->load->model('setting/setting');
        $this->load->model('tool/image');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('sellya', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');		
		
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}	
		
            $this->data['text_image_manager'] = 'Image manager';
            $this->data['token'] = $this->session->data['token']; 
			
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_module_settings'] = $this->language->get('text_module_settings');	
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_left'] = $this->language->get('text_left');	
		$this->data['text_right'] = $this->language->get('text_right');			

		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');		
		$this->data['entry_status'] = $this->language->get('entry_status');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');		
        

        $config_data = array(

        'sellya_status',
		
		'sellya_skin',	
		
        'sellya_tab_layout',
        'sellya_tab_mainmenu',				
        'sellya_tab_footer',		
		
        'sellya_menu_homepage',		
        'sellya_menu_homepage_status',
		'sellya_menu_homepage_style',
		
        'sellya_menu_categories',		
        'sellya_menu_categories_status',
        'sellya_menu_categories_style',
		
        'sellya_menu_brands',		
        'sellya_menu_brands_status',
        'sellya_menu_brands_style',		
        'sellya_menu_brands_per_row',				
		
        'sellya_menu_link_1_status',	
        'sellya_menu_link_1',
        'sellya_menu_link_1_url',
        'sellya_menu_link_1_target',		
	    'sellya_menu_link_2_status',	
        'sellya_menu_link_2',
        'sellya_menu_link_2_url',
        'sellya_menu_link_2_target',		
        'sellya_menu_link_3_status',		
        'sellya_menu_link_3',
        'sellya_menu_link_3_url',
        'sellya_menu_link_3_target',		
        'sellya_menu_link_4_status',		
        'sellya_menu_link_4',
        'sellya_menu_link_4_url',
        'sellya_menu_link_4_target',		
        'sellya_menu_link_5_status',
        'sellya_menu_link_5',
        'sellya_menu_link_5_url',
        'sellya_menu_link_5_target',		
        'sellya_menu_link_6_status',	
        'sellya_menu_link_6',
        'sellya_menu_link_6_url',
        'sellya_menu_link_6_target',		
	    'sellya_menu_link_7_status',	
        'sellya_menu_link_7',
        'sellya_menu_link_7_url',
        'sellya_menu_link_7_target',		
        'sellya_menu_link_8_status',		
        'sellya_menu_link_8',
        'sellya_menu_link_8_url',
        'sellya_menu_link_8_target',		
        'sellya_menu_link_9_status',		
        'sellya_menu_link_9',
        'sellya_menu_link_9_url',
        'sellya_menu_link_9_target',		
        'sellya_menu_link_10_status',
        'sellya_menu_link_10',
        'sellya_menu_link_10_url',
        'sellya_menu_link_10_target',		
		
        'sellya_menu_information_pages',		
        'sellya_menu_information_pages_status',
		
        'sellya_menu_your_account',		
        'sellya_menu_your_account_status',
		
        'sellya_menu_custom_block_status',
        'sellya_menu_custom_block_title',		
        'sellya_menu_custom_block_content',			
		
        'sellya_menu_contacts',		
        'sellya_menu_contacts_status',
		
        'sellya_homepage_banner_slider_type',
        'sellya_homepage_bestseller_status',		
        'sellya_homepage_featured_status',		
        'sellya_homepage_latest_status',
        'sellya_homepage_specials_status',		
        'sellya_homepage_category_wall',		
        'sellya_homepage_category_wall_status',
        'sellya_homepage_category_wall_icon_status',		
        'sellya_homepage_category_wall_per_row',			
        'sellya_homepage_category_wall_sub_number',
        'sellya_homepage_brands_wall',		
        'sellya_homepage_brands_wall_status',
        'sellya_homepage_brands_wall_style',			
        'sellya_homepage_brands_wall_per_row',		
		
        'sellya_category_subcategories',
        'sellya_category_subcategories_status',				
        'sellya_category_subcategories_style',
		
        'sellya_product_manufacturer_logo_status',			
        'sellya_product_viewed_status',		
        'sellya_product_zoom_type',		
        'sellya_product_related_status',
        'sellya_product_related_position',
        'sellya_product_custom_status',	
        'sellya_product_custom_content',
        'sellya_product_custom_tab_status',
        'sellya_product_custom_tab_title',		
        'sellya_product_custom_tab_content',
		
        'sellya_contact_custom_status',		
        'sellya_contact_custom_content',	
		
		'sellya_left_right_column_categories_type',			

        'sellya_about_status',
        'sellya_about_content',
		
        'sellya_custom_status',
        'sellya_custom_title',		
        'sellya_custom_content',		
		
        'sellya_contacts_status',
        'sellya_contacts_title',		
        'sellya_contact_mphone1',
        'sellya_contact_mphone2',		
        'sellya_contact_sphone1',
        'sellya_contact_sphone2',		
        'sellya_contact_fax1',
        'sellya_contact_fax2',		
        'sellya_contact_email1',
        'sellya_contact_email2',
        'sellya_contact_skype1',
        'sellya_contact_skype2',
        'sellya_contact_location1',
        'sellya_contact_location2',	
        'sellya_contact_hours',			
		
        'sellya_twitter_block_status',
		'sellya_twitter_block_title',
        'sellya_twitter_block_user',
        'sellya_twitter_block_tweets',
		
        'sellya_information_block_status',		
		
        'sellya_follow_us_status',
        'sellya_facebook',
        'sellya_twitter',
        'sellya_googleplus',
        'sellya_rss',
        'sellya_pinterest',
        'sellya_vimeo',
        'sellya_flickr',		
        'sellya_linkedin',	
        'sellya_youtube',		
        'sellya_dribbble',			
		
        'sellya_powered_status',
        'sellya_powered_content',		
		
        'sellya_payment_block_status',	
		'sellya_payment_block_custom',
		'sellya_payment_block_custom_thumb',
		'sellya_payment_block_custom_status',
		'sellya_payment_block_custom_url',		
        'sellya_payment_paypal',
        'sellya_payment_paypal_url',		
        'sellya_payment_visa',
        'sellya_payment_visa_url',			
        'sellya_payment_mastercard',	
        'sellya_payment_mastercard_url',
        'sellya_payment_maestro',	
        'sellya_payment_maestro_url',
        'sellya_payment_discover',	
        'sellya_payment_discover_url',			
        'sellya_payment_moneybookers',	
        'sellya_payment_moneybookers_url',
        'sellya_payment_american_express',	
        'sellya_payment_american_express_url',		
		
		'sellya_layout_style',			
		'sellya_body_background_color',
		'sellya_headings_color',
		'sellya_body_text_color',			
		'sellya_light_text_color',			
		'sellya_other_links_color',		
		'sellya_links_hover_color',
		'sellya_general_icons_style',			
		
		'sellya_main_column_status',		
		'sellya_main_column_background_color',
		'sellya_main_column_border_status',		
		'sellya_main_column_border_color',
		'sellya_main_column_border_size',
		'sellya_main_column_border_style',		
		'sellya_main_column_radius',
		'sellya_main_column_shadow',	
		
		'sellya_left_right_column_status',		
		'sellya_left_right_column_background_color',
		'sellya_left_right_column_separator_color',
		'sellya_left_right_column_separator_style',	
		'sellya_left_right_column_separator_size',				
		'sellya_left_right_column_radius',
		'sellya_left_right_column_shadow',
		'sellya_left_right_column_head_status',		
		'sellya_left_right_column_head_background_color',
		'sellya_left_right_column_head_radius',
		'sellya_left_right_column_head_shadow',
		'sellya_left_right_column_head_custom',
		'sellya_left_right_column_head_custom_thumb',
		'sellya_left_right_column_head_title_color',
		'sellya_left_right_column_box_status',		
		'sellya_left_right_column_box_background_color',
		'sellya_left_right_column_box_radius',
		'sellya_left_right_column_box_shadow',		
		
		'sellya_content_column_status',		
		'sellya_content_column_background_color',
		'sellya_content_column_separator_color',
		'sellya_content_column_separator_style',	
		'sellya_content_column_separator_size',			
		'sellya_content_column_radius',
		'sellya_content_column_shadow',	
		
		'sellya_price_color',
		'sellya_price_old_color',	
		'sellya_price_new_color',	
		'sellya_price_tax_color',			
		
		'sellya_button_background_color',
		'sellya_button_border_top_color',
		'sellya_button_border_bottom_color',
		'sellya_button_background_hover_color',
		'sellya_button_border_top_hover_color',
		'sellya_button_border_bottom_hover_color',
		'sellya_button_text_color',
		'sellya_button_exclusive_background_color',
		'sellya_button_exclusive_border_top_color',
		'sellya_button_exclusive_border_bottom_color',
		'sellya_button_exclusive_background_hover_color',
		'sellya_button_exclusive_border_top_hover_color',
		'sellya_button_exclusive_border_bottom_hover_color',
		'sellya_button_exclusive_text_color',
		'sellya_button_border_radius',
		'sellya_button_text_shadow',
	
		'sellya_top_area_status',		
		'sellya_top_area_background_color',	
		'sellya_top_area_ls_link_color',	
		'sellya_top_area_ls_link_color_hover',
		'sellya_top_area_ls_link_separator_color',		
		'sellya_top_area_lc_text_color',			
		'sellya_top_area_cart_link_color',	
		'sellya_top_area_cart_link_color_hover',
		'sellya_top_area_cart_icon_status',
		'sellya_top_area_cart_icon_style',
		'sellya_top_area_dropdown_background_color',
		'sellya_top_area_dropdown_top_bar_color',
		'sellya_logo_position',		
		'sellya_search_bar_position',
		'sellya_search_bar_style',
		'sellya_search_bar_style_color',	
		'sellya_search_bar_border_color',
		
		'sellya_mm_background_color_status',		
		'sellya_mm_background_color',
		'sellya_mm_border_top_status',		
		'sellya_mm_border_top_color',
		'sellya_mm_border_top_style',			
		'sellya_mm_border_bottom_status',		
		'sellya_mm_border_bottom_color',
		'sellya_mm_border_bottom_style',	
		'sellya_mm_separator_status',		
		'sellya_mm_separator_color',
		'sellya_mm_separator_style',	
		'sellya_mm_separator_size',
		'sellya_mm_margin_size',			
		'sellya_mm_radius',
		'sellya_mm_shadow',	
			
		'sellya_mm1_background_color_status',		
		'sellya_mm1_background_color',		
		'sellya_mm1_background_hover_color',
		'sellya_mm1_link_color',
		'sellya_mm1_link_hover_color',		
		
		'sellya_mm2_background_color_status',
		'sellya_mm2_background_color',		
		'sellya_mm2_background_hover_color',		
		'sellya_mm2_link_color',
		'sellya_mm2_link_hover_color',
		'sellya_mm2_main_category_link_color',	
        'sellya_mm2_main_category_icon_status',	

		'sellya_mm3_background_color_status',
		'sellya_mm3_background_color',
		'sellya_mm3_background_hover_color',		
		'sellya_mm3_link_color',
		'sellya_mm3_link_hover_color',		
	
		'sellya_mm4_background_color_status',
		'sellya_mm4_background_color',
		'sellya_mm4_background_hover_color',		
		'sellya_mm4_link_color',
		'sellya_mm4_link_hover_color',	

		'sellya_mm5_background_color_status',
		'sellya_mm5_background_color',
		'sellya_mm5_background_hover_color',		
		'sellya_mm5_link_color',
		'sellya_mm5_link_hover_color',	

		'sellya_mm6_background_color_status',
		'sellya_mm6_background_color',
		'sellya_mm6_background_hover_color',		
		'sellya_mm6_link_color',
		'sellya_mm6_link_hover_color',	

		'sellya_mm7_background_color_status',
		'sellya_mm7_background_color',
		'sellya_mm7_background_hover_color',		
		'sellya_mm7_link_color',
		'sellya_mm7_link_hover_color',
		
		'sellya_mm8_background_color_status',
		'sellya_mm8_background_color',
		'sellya_mm8_background_hover_color',	
		'sellya_mm8_link_color',
		'sellya_mm8_link_hover_color',		
		
		'sellya_mm_sub_background_color',
		'sellya_mm_sub_background_hover_color',		
		'sellya_mm_sub_titles_background_color',				
		'sellya_mm_sub_text_color',
		'sellya_mm_sub_link_color',		
		'sellya_mm_sub_link_hover_color',
		'sellya_mm_sub_separator_color',
		'sellya_mm_sub_separator_style',	
		'sellya_mm_sub_box_shadow',
		
		'sellya_mid_prod_slider_background_color',
		'sellya_mid_prod_slider_custom',
		'sellya_mid_prod_slider_custom_thumb',
		'sellya_mid_prod_slider_custom_position',
		'sellya_mid_prod_slider_custom_repeat',		
		'sellya_mid_prod_slider_name_color',
		'sellya_mid_prod_slider_desc_color',
		'sellya_mid_prod_slider_price_color',
		'sellya_mid_prod_slider_links_color_hover',			
		'sellya_mid_prod_slider_bottom_bar_background_color',	
		'sellya_mid_prod_slider_bottom_bar_background_color_hover',			
		'sellya_mid_prod_slider_bottom_bar_background_color_sm',		
		'sellya_mid_prod_slider_bottom_bar_link_color',	
		
		'sellya_mid_prod_box_background_color',
		'sellya_mid_prod_box_background_hover_color',	
		'sellya_mid_prod_box_border_color',	
		'sellya_mid_prod_box_border_hover_color',
		'sellya_mid_prod_box_radius',
		'sellya_mid_prod_box_sale_icon_color',			
		
		'sellya_mid_prod_stars_color',		
		
		'sellya_mid_prod_page_buy_section_background_color',
		'sellya_mid_prod_page_buy_section_separator_color',
		'sellya_mid_prod_page_buy_section_separator_style',	
		'sellya_mid_prod_page_buy_section_separator_size',
		'sellya_mid_prod_page_buy_section_radius',
		
		'sellya_mid_prod_page_tabs_background_color',		
		
		'sellya_f1_background_color',
		'sellya_f1_titles_color',
		'sellya_f1_titles_border_bottom_color',
		'sellya_f1_titles_border_bottom_style',	
		'sellya_f1_titles_border_bottom_size',		
		'sellya_f1_text_color',		
		'sellya_f1_link_color',
		'sellya_f1_link_hover_color',
		'sellya_f1_light_text_color',
		'sellya_f1_border_top_status',		
		'sellya_f1_border_top_color',
		'sellya_f1_border_top_style',	
		'sellya_f1_border_top_size',
		'sellya_f1_contact_icon_style',	
		'sellya_f1_twitts_icon_style',
		
		'sellya_f2_background_color',
		'sellya_f2_titles_color',
		'sellya_f2_titles_border_bottom_color',
		'sellya_f2_titles_border_bottom_style',
		'sellya_f2_titles_border_bottom_size',			
		'sellya_f2_link_color',
		'sellya_f2_link_hover_color',
		'sellya_f2_border_top_status',		
		'sellya_f2_border_top_color',
		'sellya_f2_border_top_style',	
		'sellya_f2_border_top_size',		
		
		'sellya_f4_background_color',
		'sellya_f4_text_color',		
		'sellya_f4_link_color',
		'sellya_f4_link_hover_color',
		'sellya_f4_light_text_color',
		'sellya_f4_border_top_status',		
		'sellya_f4_border_top_color',
		'sellya_f4_border_top_style',	
		'sellya_f4_border_top_size',		
		
		'sellya_f5_background_color',
		'sellya_f5_text_color',		
		'sellya_f5_link_color',
		'sellya_f5_link_hover_color',
		'sellya_f5_border_top_status',		
		'sellya_f5_border_top_color',
		'sellya_f5_border_top_style',	
		'sellya_f5_border_top_size',	

		'sellya_pattern_sellya',
		'sellya_bg_image_custom',
		'sellya_bg_image_thumb',
		'sellya_bg_image_position',
		'sellya_bg_image_repeat',
		'sellya_bg_image_attachment',		

		'sellya_pattern_sellya_mc',
		'sellya_bg_image_mc_custom',
		'sellya_bg_image_mc_thumb',
		'sellya_bg_image_mc_position',
		'sellya_bg_image_mc_repeat',
		'sellya_bg_image_mc_attachment',
		
		'sellya_pattern_sellya_ta',
		'sellya_bg_image_ta_custom',
		'sellya_bg_image_ta_thumb',
		'sellya_bg_image_ta_position',
		'sellya_bg_image_ta_repeat',
		'sellya_bg_image_ta_attachment',		
		
		'sellya_pattern_sellya_mm',
		'sellya_bg_image_mm_custom',
		'sellya_bg_image_mm_thumb',
		'sellya_bg_image_mm_repeat',		
		
		'sellya_pattern_sellya_mmt',
		'sellya_bg_image_mmt_custom',
		'sellya_bg_image_mmt_thumb',
		'sellya_bg_image_mmt_repeat',		
	
		'sellya_pattern_sellya_f1',
		'sellya_bg_image_f1_custom',
		'sellya_bg_image_f1_thumb',
		'sellya_bg_image_f1_position',
		'sellya_bg_image_f1_repeat',
		'sellya_pattern_sellya_f2',	
		'sellya_bg_image_f2_custom',
		'sellya_bg_image_f2_thumb',
		'sellya_bg_image_f2_position',
		'sellya_bg_image_f2_repeat',		
		'sellya_pattern_sellya_f4',	
		'sellya_bg_image_f4_custom',
		'sellya_bg_image_f4_thumb',
		'sellya_bg_image_f4_position',
		'sellya_bg_image_f4_repeat',
		'sellya_pattern_sellya_f5',			
		'sellya_bg_image_f5_custom',
		'sellya_bg_image_f5_thumb',
		'sellya_bg_image_f5_position',
		'sellya_bg_image_f5_repeat',		
		
		'sellya_body_font',
		'sellya_title_font',
		'sellya_title_font_weight',
		'sellya_title_font_uppercase',
		'sellya_cart_font',
		'sellya_cart_font_size',		
		'sellya_cart_font_weight',
		'sellya_cart_font_uppercase',		
		'sellya_main_menu_font',
		'sellya_mm_font_size',		
		'sellya_mm_font_weight',
		'sellya_mm_font_uppercase',				
		'sellya_price_font',
		'sellya_price_font_weight',			
		'sellya_button_font',
		'sellya_button_font_weight',
		'sellya_button_font_uppercase',
		'sellya_search_font',
		'sellya_search_font_size',		
		'sellya_search_font_weight',
		'sellya_search_font_uppercase',				
		'sellya_product_name_font_weight',		

        'sellya_facebook_likebox_status',	
        'sellya_facebook_likebox_id',
        'sellya_facebook_likebox_position',	
		
        'sellya_custom_box_status',	
        'sellya_custom_box_content',
        'sellya_custom_box_position',
		
        'sellya_custom_css',			

        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/sellya', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/sellya', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');	
		
		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		$this->template = 'module/sellya.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		
        if (isset($this->data['sellya_left_right_column_head_custom']) && $this->data['sellya_left_right_column_head_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_left_right_column_head_custom'])) {
            $this->data['sellya_left_right_column_head_custom_thumb'] = $this->model_tool_image->resize($this->data['sellya_left_right_column_head_custom'], 100, 100);
        } else {
            $this->data['sellya_left_right_column_head_custom_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	        		
        if (isset($this->data['sellya_mid_prod_slider_custom']) && $this->data['sellya_mid_prod_slider_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_mid_prod_slider_custom'])) {
            $this->data['sellya_mid_prod_slider_thumb'] = $this->model_tool_image->resize($this->data['sellya_mid_prod_slider_custom'], 100, 100);
        } else {
            $this->data['sellya_mid_prod_slider_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
        if (isset($this->data['sellya_pattern_custom']) && $this->data['sellya_pattern_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_pattern_custom'])) {
            $this->data['sellya_pattern_thumb'] = $this->model_tool_image->resize($this->data['sellya_pattern_custom'], 100, 100);
        } else {
            $this->data['sellya_pattern_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_bg_image_custom']) && $this->data['sellya_bg_image_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_custom'])) {
            $this->data['sellya_bg_image_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_pattern_custom_mc']) && $this->data['sellya_pattern_custom_mc'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_pattern_custom_mc'])) {
            $this->data['sellya_pattern_thumb_mc'] = $this->model_tool_image->resize($this->data['sellya_pattern_custom_mc'], 100, 100);
        } else {
            $this->data['sellya_pattern_thumb_mc'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_bg_image_mc_custom']) && $this->data['sellya_bg_image_mc_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_mc_custom'])) {
            $this->data['sellya_bg_image_mc_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_mc_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_mc_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
        if (isset($this->data['sellya_pattern_custom_ta']) && $this->data['sellya_pattern_custom_ta'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_pattern_custom_ta'])) {
            $this->data['sellya_pattern_thumb_ta'] = $this->model_tool_image->resize($this->data['sellya_pattern_custom_ta'], 100, 100);
        } else {
            $this->data['sellya_pattern_thumb_ta'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_bg_image_ta_custom']) && $this->data['sellya_bg_image_ta_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_ta_custom'])) {
            $this->data['sellya_bg_image_ta_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_ta_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_ta_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
        if (isset($this->data['sellya_pattern_custom_mm']) && $this->data['sellya_pattern_custom_mm'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_pattern_custom_mm'])) {
            $this->data['sellya_pattern_thumb_mm'] = $this->model_tool_image->resize($this->data['sellya_pattern_custom_mm'], 100, 100);
        } else {
            $this->data['sellya_pattern_thumb_mm'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_bg_image_mm_custom']) && $this->data['sellya_bg_image_mm_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_mm_custom'])) {
            $this->data['sellya_bg_image_mm_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_mm_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_mm_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_pattern_custom_mmt']) && $this->data['sellya_pattern_custom_mmt'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_pattern_custom_mmt'])) {
            $this->data['sellya_pattern_thumb_mmt'] = $this->model_tool_image->resize($this->data['sellya_pattern_custom_mmt'], 100, 100);
        } else {
            $this->data['sellya_pattern_thumb_mmt'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
        if (isset($this->data['sellya_bg_image_mmt_custom']) && $this->data['sellya_bg_image_mmt_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_mmt_custom'])) {
            $this->data['sellya_bg_image_mmt_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_mmt_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_mmt_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
		
	    if (isset($this->data['sellya_bg_image_f1_custom']) && $this->data['sellya_bg_image_f1_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_f1_custom'])) {
            $this->data['sellya_bg_image_f1_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_f1_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_f1_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
	    if (isset($this->data['sellya_bg_image_f2_custom']) && $this->data['sellya_bg_image_f2_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_f2_custom'])) {
            $this->data['sellya_bg_image_f2_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_f2_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_f2_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }	
	    if (isset($this->data['sellya_bg_image_f4_custom']) && $this->data['sellya_bg_image_f4_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_f4_custom'])) {
            $this->data['sellya_bg_image_f4_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_f4_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_f4_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }
	    if (isset($this->data['sellya_bg_image_f5_custom']) && $this->data['sellya_bg_image_f5_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_bg_image_f5_custom'])) {
            $this->data['sellya_bg_image_f5_thumb'] = $this->model_tool_image->resize($this->data['sellya_bg_image_f5_custom'], 100, 100);
        } else {
            $this->data['sellya_bg_image_f5_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }			
		
        if (isset($this->data['sellya_payment_block_custom']) && $this->data['sellya_payment_block_custom'] != "" && file_exists(DIR_IMAGE . $this->data['sellya_payment_block_custom'])) {
            $this->data['sellya_payment_block_custom_thumb'] = $this->model_tool_image->resize($this->data['sellya_payment_block_custom'], 100, 100);
        } else {
            $this->data['sellya_payment_block_custom_thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
        }		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		
		$this->response->setOutput($this->render());
	}
		
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/sellya')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>