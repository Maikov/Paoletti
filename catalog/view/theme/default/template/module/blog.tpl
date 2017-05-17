<?php
if ($this->browser() !=  'ieO') {
?>
<script type="text/javascript">
if ($('head').html().indexOf('blog.css') <0) {
	$('head').append('<link href="catalog/view/theme/<?php echo $theme."/stylesheet/blog.css"; ?>" type="text/css" rel="stylesheet" />');
 }
</script>
<?php }
else
{
?><style>
<?php
 include (DIR_TEMPLATE.$theme.'/stylesheet/blog.css');
?>
</style>
<?php
}
?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content">



    <div class="box-ul">

<?php
if (count($myblogs)>0) {
foreach ($myblogs as $blogs)
{?>
<!--
<div style="padding-left:<?php echo $blogs['level']*20; ?>px;">
 <a href="<?php echo $blogs['href']; ?>"><?php echo $blogs['name']; ?></a>
</div>
-->
<?php
for ($i=0; $i<$blogs['flag_start']; $i++)
{


?><ul style="padding-left:<?php echo ($blogs['level']*10)+10; ?>px; <?php if(!$blogs['display']) echo 'display:none;' ?>  ">
<li><a href="<?php if($blogs['active']=='active') echo $blogs['href']."#";  else echo $blogs['href']; ?>" class="<?php if($blogs['active']=='active') echo 'active'; if($blogs['active']=='pass') echo 'pass'; ?>"><?php echo $blogs['name']; if ($blogs['count']>0) echo  " (".$blogs['count'].")"; ?></a>
<?php


for ($m=0; $m<$blogs['flag_end']; $m++)
{
?> </li>
</ul>
<?php
}
}
?>


<?php
}
}
?>


   </div>
</div>
</div>