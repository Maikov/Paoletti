<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/search_suggestion.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/search_suggestion<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<script type="text/javascript" src="catalog/view/javascript/scrolltopcontrol.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/responsive<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<!--MXS-->
<?php if ($this->config->get('theme_animate')) { ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/openshop_animate.css" />
<?php } ?>
<?php if ($this->config->get('theme_animate_pages')) { ?>
    <?php if (($this->config->get('theme_animate_pages')!=2) or !isset($this->request->get['route']) or ($this->request->get['route']=='common/home')) { ?>
    <script type="text/javascript">
        $(document).ready(function(){
            $('body').removeClass('preload');});
    </script>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/openshop_anipage.css" />
    <?php } ?>
<?php } ?>
<style type="text/css">
    <?php if ($this->config->get('theme_logo_offsetx')) { ?>
    #header #logo { <?php if ($direction == 'rtl') echo 'right'; else echo 'left'; ?>: <?php echo $this->config->get('theme_logo_offsetx'); ?>px; }
    <?php } ?>
    <?php if ($this->config->get('theme_logo_offsety')) { ?>
    #header #logo { top: <?php echo $this->config->get('theme_logo_offsety'); ?>px; }
    <?php } ?>
    <?php if ($this->config->get('theme_header_size')) { ?>
    #header { height: <?php echo $this->config->get('theme_header_size'); ?>px; }
    <?php } ?>
    <?php if ($this->config->get('theme_links_color')) { ?>
    #header .links a { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    .box-product .name a { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    .product-list .name a { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    .product-grid .name a { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    #header #cart .heading a { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    a, a:visited, a b { color: <?php echo $this->config->get('theme_links_color'); ?>; }
    <?php } ?>
    <?php if ($this->config->get('theme_menu_color')) { ?>
    #menu { background: <?php echo $this->config->get('theme_menu_color'); ?>; }
    #menu > ul > li > div { background: <?php echo $this->config->get('theme_menu_color'); ?>; }
    #menu > ul > li:hover > div { opacity: 0.9; }
        <?php if ($this->config->get('theme_menu_light')) { ?>
            #menu > ul > li > a { color: black; }
            #menu > ul > li:hover > a { color: white; }
            #menu > ul > li > div > ul > li > a { color: black; }
            #menu > ul > li > div > ul > li > a:hover { color: white; }
        <?php } ?>
    <?php } ?>
    <?php if ($this->config->get('theme_buttons_color')) { ?>
    a.button, input.button { background: <?php echo $this->config->get('theme_buttons_color'); ?>; }
    a.button:hover, input.button:hover { background: <?php echo $this->config->get('theme_buttons_dark'); ?>; }
        <?php if ($this->config->get('theme_buttons_light')) { ?>
            a.button, input.button { color: black; }
            a.button:hover, input.button:hover { color:white; }
        <?php } ?>
    <?php } ?>
    <?php if ($this->config->get('theme_background_color')) { ?>
    body { background-color: <?php echo $this->config->get('theme_background_color'); ?>; }
    <?php } ?>
    <?php if ($this->config->get('theme_background')) { ?>
    body { background-image: url('image/<?php echo $this->config->get('theme_background'); ?>'); background-repeat: repeat; }
    <?php } ?>
</style>
<!--MXE-->
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
    <style type="text/css">
        <?php if ($this->config->get('theme_menu_color')) { ?>
        #powered { background: <?php echo $this->config->get('theme_menu_color'); ?>; }
        <?php if ($this->config->get('theme_menu_light')) { ?>
        #powered { color: black; }
        #powered a { color: black; }
        #menu > ul > li > a { border-left-color: black; }
        #menu > ul > li ul > li > a { border-top-color: black; }
        <?php } ?>
    <?php } ?>
    </style>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<!--[if lt IE 9]>
   <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->

<?php echo $google_analytics; ?>
</head>
<body class="preload">
<!--[if lt IE 7]>
<div style='border: 1px solid #F7941D; background: #FEEFDA; text-align: center; clear: both; height: 75px; position: relative; z-index:5000' id="forie6"> 
	<div style='position: absolute; right: 3px; top: 3px; font-family: courier new; font-weight: bold;'>
		<a href="#" onclick="document.getElementById('forie6').style['display'] = 'none'"><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-cornerx.jpg' style='border: none;' alt='Close this notice'/></a>
	</div> 
	<div style='width: 740px; margin: 0 auto; text-align: left; padding: 0; overflow: hidden; color: black;'> 
		<div style='width: 75px; float: left;'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-warning.jpg' alt='Warning!'/></div> 
		<div style='width: 275px; float: left; font-family: Arial, sans-serif; color:#000'> 
			<div style='font-size: 14px; font-weight: bold; margin-top: 12px; color:#000'>You are using an outdated browser</div> 
			<div style='font-size: 12px; margin-top: 6px; line-height: 12px; color:#000'>For a better experience using this site, please upgrade to a modern web browser.</div> 
		</div>
		<div style='width: 75px; float: left;'>
			<a href='http://www.firefox.com' target='_blank'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-firefox.jpg' style='border: none;' alt='Get Firefox 3.5'/></a>
		</div>
		<div style='width: 75px; float: left;'>
			<a href='http://www.browserforthebetter.com/download.html' target='_blank'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-ie8.jpg' style='border: none;' alt='Get Internet Explorer 8'/></a>
		</div> 
		<div style='width: 73px; float: left;'>
			<a href='http://www.apple.com/safari/download/' target='_blank'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-safari.jpg' style='border: none;' alt='Get Safari 4'/></a>
		</div> 
		<div style='float: left; width: 73px;'>
			<a href='http://www.google.com/chrome' target='_blank'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-chrome.jpg' style='border: none;' alt='Get Google Chrome'/></a>
		</div>
		<div style='float: left;'>
			<a href='http://www.opera.com/' target='_blank'><img src='catalog/view/theme/<?php echo $this->config->get("config_template"); ?>/image/ie6nomore-opera.jpg' style='border: none;' alt='Opera'/></a>
		</div> 
	</div>
</div>
<![endif]-->
<div class="toplinks">
    <ul>
        <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
        <li></li>
        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
        <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
    </ul>
</div>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <?php if ($filter_name) { ?>
    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
    <?php } else { ?>
    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
    <?php } ?>
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
</div>
<div class="small_link">
    <div><?php if (!isset($openshop_menu)) $openshop_menu='Menu'; echo $openshop_menu; ?></div>
    <select onchange="location=this.value">
        <option></option>
        <option value="<?php echo $home; ?>"><?php echo $text_home; ?></option>
        <option value="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></option>
        <option value="<?php echo $account; ?>"><?php echo $text_account; ?></option>
        <option value="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></option>
        <option value="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></option>
    </select>
</div>
<?php 
if ($categories) {
    $org_html = "";
    $small_html = "";
    foreach($categories as $category)
    {
        $org_html .= "<li><a href='".$category['href']."'>".$category['name']."</a>";
        $small_html .= "<option value='".$category['href']."'>".$category['name']."</option>";
        if($category['children'])
        {
            $org_html .= "<div>";
            for ($i = 0; $i < count($category['children']);) 
            {
                $org_html .= "<ul>";
                $j = $i + ceil(count($category['children']) / $category['column']);
                for (; $i < $j; $i++) 
                    if (isset($category['children'][$i])) 
                    {
                        $org_html .= "<li><a href='".$category['children'][$i]['href']."'>".$category['children'][$i]['name']."</a></li>";
                        $small_html .= "<option value='".$category['children'][$i]['href']."'> --- ".$category['children'][$i]['name']."</option>";
                    }
                $org_html .= "</ul>";
            }
            $org_html .= "</div>";
        }
        $org_html .= "</li>";
    }
    echo "<div id='menu'><ul class='org_cat'>$org_html</ul></div>";
    if (!isset($openshop_navigation)) $openshop_navigation='Navigation';
    echo "<div class='small_cat'><div>".$openshop_navigation."</div><select onChange='location = this.value'><option></option><option value='$home'>Home</option>$small_html</select></div>";
} 
?>

<div id="notification"></div>
<div class="wrap_content">
