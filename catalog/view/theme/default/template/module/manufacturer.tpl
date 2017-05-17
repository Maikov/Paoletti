<div class="box">
<div class="box-slider">
<div class="box-heading"><?php echo $heading_title; ?><img class="dropdown" src="image/arrow-down_1.png" width="9" height="5"></div>
<div class="box-content">
<div class="box-manufacturer">
    <ul class="slider">
      <?php foreach ($manufacturers as $manufacturer) { ?>
      
	<li>
      <a href="<?=$manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
        </li>
      <?php } ?>
    </ul>
</div>
</div>
</div>
</div>
<script>
$(document).ready(function () {
    $(".box-slider").hover(
  function () {
     $('ul.slider').slideDown('medium');
  }, 
  function () {
     $('ul.slider').slideUp('medium');
  }
);

});
</script>