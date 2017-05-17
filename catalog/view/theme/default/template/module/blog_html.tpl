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
?>
<style>
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
		<?php echo($html); ?>
	</div>
</div>