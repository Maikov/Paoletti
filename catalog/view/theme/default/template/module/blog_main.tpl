<?php
if ($this->browser() !=  'ieO') {
?>
<script type="text/javascript">
if ($('head').html().indexOf('blog.css')< 0) {
	$('head').append('<link href="catalog/view/theme/<?php echo $theme."/stylesheet/blog.css"; ?>" type="text/css" rel="stylesheet" />');
 }
</script>
<?php }
else
{
?>
<style>
<?php
 include (DIR_TEMPLATE.$theme.'/stylesheet/blog.css');
?>
</style>
<?php
}
?>
<style>


.fich {margin: 0px 0 0px 0px; overflow:hidden}

.gallery_fich .section {float:left; width:220px; margin: 1px 1px 0 0; margin-right: 20px; position:relative}

.gallery_fich .hid {	position:absolute;
	bottom:0;
	background: rgb(0, 0, 0);
	background:transparent;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#80ff0000, endColorstr=#80ff0000);
	zoom: 1;
	background: rgba(0, 0, 0, 0.5);
	color: #FFF;
	width:220px;
	font-size: 14px;
	padding: 0px;
	padding-right: 0px;
	text-decoration:none !important;
}
.gallery_fich .hid, .gallery_fich .hid_small {text-shadow: 0 1px 0 rgba(0, 0, 0, 0.5);}

.fich div { margin-bottom: 0px; }
.gallery_fich div.hid_small ins { margin: 5px;  }



.gallery_fich a {text-decoration:none !important;}

.gallery_fich .section .width_img{width:220px; height:134px; display:block}
.gallery_fich a:hover .hid {background-color:black; text-decoration:none !important; opacity: 1;}



.comments-count {
    display: block;
    right: 8px;
    color: #999999;
    position: absolute;
    top: 8px;
}


.bubble a {
    background: none repeat scroll 0 0 #000000;
    color: #FFFFFF;
    font-size: 11px;
    line-height: 1;
    padding: 3px 7px;
    text-decoration: none;
}

.mbubble {
display: block;
  width: 0;
    height: 0;
    border-top: 10px solid black;
    border-right: 10px solid transparent;
   margin-top: 3px;
   margin-left: 5px;
}

.com-text {
    display: none;
}

</style>

 <?php if ($records) { ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content">


<div class="fich">
    <div class="gallery_fich">
     <?php foreach ($records as $record) { ?>
         <div class="section" style="margin-top: 10px;">

                <a class="width_img" href="<?php echo $record['href']; ?>" title="">
                <img src="<?php echo $record['thumb']; ?>" alt="" title=""/>

                <div class="hid hid_small"><ins style="margin-top: 10px;"><?php echo $record['name']; ?></ins></div>
                </a>

                    <span class="comments-count small_g">
                        <span class="com-text"><?php echo $text_comments; ?></span>
                            <span class="bubble">
                            <a href="<?php echo $record['href']; ?>#tab-comment"><?php echo $record['comments']; ?></a>
                            </span>
                            <span class="mbubble">
                            </span>
            		</span>

        </div>

<?php } ?>

                    </div>
</div>
</div>
</div>
<?php } ?>

<div style="overflow: hidden; width: 100%; margin-bottom: 0px;">&nbsp;</div>