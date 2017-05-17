<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="view/stylesheet/stylesheet<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link type="text/css" href="view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="view/javascript/scrolltopcontrol.js"></script>
<script type="text/javascript" src="view/javascript/jquery/superfish/js/superfish.js"></script>
<style type="text/css">
body {
    max-width: 1100px;
    margin-left: auto;
    margin-right: auto;
    background: #193050;
}

#header .div1 {
    background: url('view/image/openshop_header.png') repeat-x;
}
.overview {
	width: 24%;
}
.statistic {
	float: left;
    padding-left: 15px;
}
.news {
    float: right;
    width: 24%;
    margin-bottom: 20px;
}

a.button:hover {
    background: #1655b0;
}

#menu > ul li li:hover, #menu > ul li li.sfhover {
    background: #777777;
}

#menu > ul .top:hover {
    background: url('view/image/openshop_hover.png') repeat-x;
}

#menu > ul .selected .top {
    background: url('view/image/openshop_selected.png') repeat-x;
}

</style>
<style type="text/css">
            #menu > ul .top, #menu > ul li li.sfhover {
                padding: 8px 15px 11px 15px;
            }
            #menu > ul ul {
                margin-left: 8px;
            }
            #menu > ul li ul a {
		width: auto;
		min-width: 145px;
	    }
	    
            </style>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript">
//-----------------------------------------
// Confirm Actions (delete, uninstall)
//-----------------------------------------
$(document).ready(function(){
    // Confirm Delete
    $('#form').submit(function(){
        if ($(this).attr('action').indexOf('delete',1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
    	
    // Confirm Uninstall
    $('a').click(function(){
        if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
            if (!confirm('<?php echo $text_confirm; ?>')) {
                return false;
            }
        }
    });
});
</script>
    <script type="text/javascript">
    $(function(){
        $('table.list tbody tr').hover(function(){
            $(this).children('td').css('background-color', '#f2f2f2');
        },function(){
            $(this).children('td').css('background-color', '#fff');
        });
    });
    </script>
</head>
<body>
<div id="container">
<div id="header">
  <div class="div1">
    <div class="div2"><img src="view/image/openshop_logo.png" title="<?php echo $heading_title; ?>" onclick="location = '<?php echo $home; ?>'" /></div>
    <?php if ($logged) { ?>
    <div class="div3"><img src="view/image/lock.png" alt="" style="position: relative; top: 3px;" />&nbsp;<?php echo $logged; ?> &nbsp;&nbsp;<a class="button" href="<?php echo $this->url->link('tool/helpme', 'token=' . $this->session->data['token'], 'SSL'); ?>"><b><?php echo $request_help; ?></b></a></div>
    <?php } ?>
  </div>
  <?php if ($logged) { ?>
  <div id="menu">
    <ul class="left" style="display: none;">
      <li id="dashboard"><a href="<?php echo $home; ?>" class="top"><img width="22" height="22" src="view/image/home.png" style="vertical-align:middle;"></a></li>
<li id="maxcms"><a class="top"><img width="22" height="22" src="view/image/order.png" style="vertical-align:middle;"> <b><?php echo $cms_menu; ?></b></a>
        <ul>
          <li><a href="<?php echo $information; ?>"><img width="22" height="22" src="view/image/information.png" style="vertical-align:middle;"> <?php echo $information_pages; ?></a></li>
          <li><a href="<?php echo $news; ?>"><img width="22" height="22" src="view/image/review.png" style="vertical-align:middle;"> <?php echo $text_news; ?></a></li>
          <li><a href="<?php echo $text_blocks; ?>"><img width="22" height="22" src="view/image/report.png" style="vertical-align:middle;"> <?php echo $text_modules; ?></a></li>
          <li><a href="<?php echo $contact; ?>"><img width="22" height="22" src="view/image/mail.png" style="vertical-align:middle;"> <?php echo $text_contact; ?></a></li>
        </ul>
      </li>
      <li id="catalog"><a class="top"><img width="22" height="22" src="view/image/layout.png" style="vertical-align:middle;"> <b><?php echo $text_catalog; ?></b></a>
        <ul>
          <li><a href="<?php echo $category; ?>"><img width="22" height="22" src="view/image/category.png" style="vertical-align:middle;"> <?php echo $text_category; ?></a></li>
          <li><a href="<?php echo $product; ?>"><img width="22" height="22" src="view/image/stock-status.png" style="vertical-align:middle;"> <?php echo $text_product; ?></a></li>
          <li><a class="parent"><img width="22" height="22" src="view/image/measurement.png" style="vertical-align:middle;"> <?php echo $text_attribute; ?></a>
            <ul>
              <li><a href="<?php echo $attribute; ?>"><?php echo $text_attribute; ?></a></li>
              <li><a href="<?php echo $attribute_group; ?>"><?php echo $text_attribute_group; ?></a></li>
            </ul>
          </li>
          <li><a href="<?php echo $option; ?>"><img width="22" height="22" src="view/image/product.png" style="vertical-align:middle;"> <?php echo $text_option; ?></a></li>
          <li><a href="<?php echo $manufacturer; ?>"><img width="22" height="22" src="view/image/customer.png" style="vertical-align:middle;"> <?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $download; ?>"><img width="22" height="22" src="view/image/download.png" style="vertical-align:middle;"> <?php echo $text_download; ?></a></li>
          <li><a href="<?php echo $review; ?>"><img width="22" height="22" src="view/image/review.png" style="vertical-align:middle;"> <?php echo $text_review; ?></a></li>
          
        </ul>
      </li>
      <li id="extension"><a class="top"><img width="22" height="22" src="view/image/module.png" style="vertical-align:middle;"> <b><?php echo $text_extension; ?></b></a>
        <ul>
<li><a href="<?php echo $this->url->link('tool/tweaks', 'token=' . $this->session->data['token'], 'SSL'); ?>"><img src="view/image/product.png" style="vertical-align:middle;"> <?php if (!isset($tweaks)) $tweaks='Tweaks'; echo $tweaks; ?></a></li>
          <li><a href="<?php echo $module; ?>"><img width="22" height="22" src="view/image/module.png" style="vertical-align:middle;"> <?php echo $text_module; ?></a></li>
          <li><a href="<?php echo $shipping; ?>"><img width="22" height="22" src="view/image/shipping.png" style="vertical-align:middle;"> <?php echo $text_shipping; ?></a></li>
          <li><a href="<?php echo $payment; ?>"><img width="22" height="22" src="view/image/payment.png" style="vertical-align:middle;"> <?php echo $text_payment; ?></a></li>
          <li><a href="<?php echo $total; ?>"><img width="22" height="22" src="view/image/total.png" style="vertical-align:middle;"> <?php echo $text_total; ?></a></li>
          <li><a href="<?php echo $feed; ?>"><img width="22" height="22" src="view/image/feed.png" style="vertical-align:middle;"> <?php echo $text_feed; ?></a></li>
        </ul>
      </li>
      <li id="sale"><a class="top"><img width="22" height="22" src="view/image/tax.png" style="vertical-align:middle;"> <b><?php echo $text_sale; ?></b></a>
        <ul>
          <li><a href="<?php echo $order; ?>"><img width="22" height="22" src="view/image/order.png" style="vertical-align:middle;"> <?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $return; ?>"><img width="22" height="22" src="view/image/error.png" style="vertical-align:middle;"> <?php echo $text_return; ?></a></li>
          <li><a class="parent"><img width="22" height="22" src="view/image/customer.png" style="vertical-align:middle;"> <?php echo $text_customer; ?></a>
            <ul>
              <li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
              <li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li>
              <li><a href="<?php echo $customer_blacklist; ?>"><?php echo $text_customer_blacklist; ?></a></li>
            </ul>
          </li>
          
          <li><a href="<?php echo $coupon; ?>"><img width="22" height="22" src="view/image/feed.png" style="vertical-align:middle;"> <?php echo $text_coupon; ?></a></li>
          <li><a class="parent"><img width="22" height="22" src="view/image/payment.png" style="vertical-align:middle;"> <?php echo $text_voucher; ?></a>
            <ul>
              <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
              <li><a href="<?php echo $voucher_theme; ?>"><?php echo $text_voucher_theme; ?></a></li>
            </ul>
          </li>
          
        </ul>
      </li>
      <li id="system"><a class="top"><img width="22" height="22" src="view/image/product.png" style="vertical-align:middle;"> <b><?php echo $text_system; ?></b></a>
        <ul>
          <li><a href="<?php echo $setting; ?>"><img width="22" height="22" src="view/image/setting.png" style="vertical-align:middle;"> <?php echo $text_setting; ?></a></li>
          <li><a class="parent"><img width="22" height="22" src="view/image/layout.png" style="vertical-align:middle;"> <?php echo $text_design; ?></a>
            <ul>
              <li><a href="<?php echo $layout; ?>"><?php echo $text_layout; ?></a></li>
              <li><a href="<?php echo $banner; ?>"><?php echo $text_banner; ?></a></li>
            </ul>
          </li>
          <li><a class="parent"><img width="22" height="22" src="view/image/user-group.png" style="vertical-align:middle;"> <?php echo $text_users; ?></a>
            <ul>
              <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
              <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
            </ul>
          </li>
          <li><a class="parent"><img width="22" height="22" src="view/image/country.png" style="vertical-align:middle;"> <?php echo $text_localisation; ?></a>
            <ul>
              <li><a href="<?php echo $language; ?>"><?php echo $text_language; ?></a></li>
              <li><a href="<?php echo $currency; ?>"><?php echo $text_currency; ?></a></li>
              <li><a href="<?php echo $stock_status; ?>"><?php echo $text_stock_status; ?></a></li>
              <li><a href="<?php echo $order_status; ?>"><?php echo $text_order_status; ?></a></li>
              <li><a class="parent"><?php echo $text_return; ?></a>
                <ul>
                  <li><a href="<?php echo $return_status; ?>"><?php echo $text_return_status; ?></a></li>
                  <li><a href="<?php echo $return_action; ?>"><?php echo $text_return_action; ?></a></li>
                  <li><a href="<?php echo $return_reason; ?>"><?php echo $text_return_reason; ?></a></li>
                </ul>
              </li>
              <li><a href="<?php echo $country; ?>"><?php echo $text_country; ?></a></li>
              <li><a href="<?php echo $zone; ?>"><?php echo $text_zone; ?></a></li>
              <li><a href="<?php echo $geo_zone; ?>"><?php echo $text_geo_zone; ?></a></li>
              





              <li><a href="<?php echo $length_class; ?>"><?php echo $text_length_class; ?></a></li>
              <li><a href="<?php echo $weight_class; ?>"><?php echo $text_weight_class; ?></a></li>
            </ul>
          </li>
<li><a target="_blank" href="<?php echo substr($this->url->link('common/home', '', 'SSL'),0,-27).'ext/'; ?>"><img width="22" height="22" src="view/image/category.png" style="vertical-align:middle;"> <?php if (!isset($file_manager)) $file_manager='File Manager'; echo $file_manager; ?></a></li>
			<li><a target="_blank" href="<?php echo substr($this->url->link('common/home', '', 'SSL'),0,-27).'sqlbuddy/'; ?>"><img width="22" height="22" src="view/image/stock-status.png" style="vertical-align:middle;"> <?php if (!isset($mysql_admin)) $mysql_admin='MySQL Admin'; echo $mysql_admin; ?></a></li>
          <li><a href="<?php echo $error_log; ?>"><img width="22" height="22" src="view/image/log.png" style="vertical-align:middle;"> <?php echo $text_error_log; ?></a></li>
          <li><a href="<?php echo $backup; ?>"><img width="22" height="22" src="view/image/backup.png" style="vertical-align:middle;"> <?php echo $text_backup; ?></a></li>
        <li><a href="<?php echo $export; ?>"><?php echo $text_export; ?></a></li>
        </ul>
      </li>
      <li id="reports"><a class="top"><img width="22" height="22" src="view/image/report.png" style="vertical-align:middle;"> <b><?php echo $text_reports; ?></b></a>
        <ul>
          <li><a class="parent"><img width="22" height="22" src="view/image/tax.png" style="vertical-align:middle;"> <?php echo $text_sale; ?></a>
            <ul>
              <li><a href="<?php echo $report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
              
              <li><a href="<?php echo $report_sale_shipping; ?>"><?php echo $text_report_sale_shipping; ?></a></li>
              <li><a href="<?php echo $report_sale_return; ?>"><?php echo $text_report_sale_return; ?></a></li>
              <li><a href="<?php echo $report_sale_coupon; ?>"><?php echo $text_report_sale_coupon; ?></a></li>
            </ul>
          </li>
          <li><a class="parent"><img width="22" height="22" src="view/image/stock-status.png" style="vertical-align:middle;"> <?php echo $text_product; ?></a>
            <ul>
              <li><a href="<?php echo $report_product_viewed; ?>"><?php echo $text_report_product_viewed; ?></a></li>
              <li><a href="<?php echo $report_product_purchased; ?>"><?php echo $text_report_product_purchased; ?></a></li>
            </ul>
          </li>
          <li><a class="parent"><img width="22" height="22" src="view/image/customer.png" style="vertical-align:middle;"> <?php echo $text_customer; ?></a>
            <ul>
              <li><a href="<?php echo $report_customer_online; ?>"><?php echo $text_report_customer_online; ?></a></li>
              <li><a href="<?php echo $report_customer_order; ?>"><?php echo $text_report_customer_order; ?></a></li>
              <li><a href="<?php echo $report_customer_reward; ?>"><?php echo $text_report_customer_reward; ?></a></li>
              <li><a href="<?php echo $report_customer_credit; ?>"><?php echo $text_report_customer_credit; ?></a></li>
            </ul>
          </li>
          




        </ul>
      </li>
      <li id="help"><a class="top"><img width="22" height="22" src="view/image/information.png" style="vertical-align:middle;"> <b><?php echo $text_help; ?></b></a>
        <ul>
          <li><a onClick="window.open('http://www.opencart.com');"><img width="22" height="22" src="view/image/home.png" style="vertical-align:middle;"> <?php echo $text_opencart; ?></a></li>
          <li><a onClick="window.open('http://www.opencart.com/index.php?route=documentation/introduction');"><img width="22" height="22" src="view/image/review.png" style="vertical-align:middle;"> <?php echo $text_documentation; ?></a></li>
          <li><a onClick="window.open('http://forum.opencart.com');"><img width="22" height="22" src="view/image/category.png" style="vertical-align:middle;"> <?php echo $text_support; ?></a></li>
        </ul>
      </li>
    </ul>
    <ul class="right">
      <li id="store"><a onClick="window.open('<?php echo $store; ?>');" class="top"><?php echo $text_front; ?></a>
        <ul>
          <?php foreach ($stores as $stores) { ?>
          <li><a onClick="window.open('<?php echo $stores['href']; ?>');"><?php echo $stores['name']; ?></a></li>
          <?php } ?>
        </ul>
      </li>
      <li id="store"><a class="top" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
    </ul>
    <script type="text/javascript"><!--
$(document).ready(function() {
	$('#menu > ul').superfish({
		hoverClass	 : 'sfHover',
		pathClass	 : 'overideThisToUse',
		delay		 : 0,
		animation	 : {height: 'show'},
		speed		 : 'normal',
		autoArrows   : false,
		dropShadows  : false, 
		disableHI	 : false, /* set to true to disable hoverIntent detection */
		onInit		 : function(){},
		onBeforeShow : function(){},
		onShow		 : function(){},
		onHide		 : function(){}
	});
	
	$('#menu > ul').css('display', 'block');
});
 
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
} 

$(document).ready(function() {
	route = getURLVar('route');
	
	if (!route) {
		$('#dashboard').addClass('selected');
	} else {
		part = route.split('/');
		
		url = part[0];
		
		if (part[1]) {
			url += '/' + part[1];
		}
		
		$('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
	}
});
//--></script> 
  </div>
  <?php } ?>
</div>
