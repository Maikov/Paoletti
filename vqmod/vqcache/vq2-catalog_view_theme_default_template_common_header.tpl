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
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<link href="catalog/view/theme/default/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/JavaScript" src="catalog/view/javascript/jquery/cloud-zoom/cloud-zoom.1.0.2.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/fast_order.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/flick/css/flick/jquery-ui-1.10.2.custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/jquery.ui.selectgroup.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery.ui.selectgroup.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/search_suggestion.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/search_suggestion<?php if ($direction == 'rtl') echo '-a'; ?>.css" />
<script type="text/javascript" src="catalog/view/javascript/scrolltopcontrol.js"></script>
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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/news.css" />
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
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

<script type="text/javascript" src="//vk.com/js/api/openapi.js?95"></script>

<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <div style="height: 110px; width: 227px; padding-top: 17px; padding-left: 245px;">
  <div id="tabs" class="htabs">
  <a href="#tabs-1">Телефоны</a>
  <a href="#tabs-2">Часы работы</a>
  </div>
  <div id="tabs-1" class="tab-content">   
  <p></p>    
	<span style="font-size:16px;"><img src="http://elenashoes.com.ua/design/elena/images/mts.gif" style="vertical-align: middle; margin-right: 5px;" /><span style="color:#ff0000;">МТС</span>&nbsp;(095) 629 87 41</span>
	</br>
	<span style="font-size:16px;"><img src="http://elenashoes.com.ua/design/elena/images/kievstar.gif" style="vertical-align: middle; margin-right: 5px;" /><span style="color:#0000ff;">KS</span>&nbsp; &nbsp;(067) 742 44 20</span>
  </div>
  <div id="tabs-2" class="tab-content">  
  
       <span style="font-size:16px;">с 10:00 до 20:00 </span>
       </br>
	<span style="font-size:16px;">ежедневно</span>
	 </br>
	<span style="font-size:16px;">(кроме праздников)</span>
  </div>  
</div>
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
    <?php echo $text_logged_s; ?>
    <?php } ?>
<?php if ($categories) { ?>
  </div>
<div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a><a href="<>"><?php echo $text_shopping_cart; ?></a><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div id="notification"></div>