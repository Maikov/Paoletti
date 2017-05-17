<div class="box">
<div class="box-slider-review">
  <?php if ($header) { ?>
  <div class="box-heading"><?php echo $header; ?></div>
  <?php } ?>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($reviews as $review) { ?>
      <div class="div-slider">
      <div style="margin:0px;">
        <?php if ($review['product_id']) { ?>
          <?php if ($review['prod_thumb']) { ?>
          <div class="image"><a href="<?php echo $review['prod_href']; ?>"><img src="<?php echo $review['prod_thumb']; ?>" alt="<?php echo $review['prod_name']; ?>" title="<?php echo $review['prod_name']; ?>"/></a></div>
          <?php } ?>
          <div class="name"><a href="<?php echo $review['prod_href']; ?>"><?php echo $review['prod_name']; ?></a></div>
          <?php } ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $review['rating']; ?>.png"/></div>
      </div>
      <div style="margin:0px;text-align:left;width: 100%;"><?php echo $review['description']?></div>
      <div style="margin-bottom:15px;font-style:italic;font-weight:bold;text-align:right;"><?php echo $review['author']?></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
</div>
<script>
$(document).ready(function () {
    $(".box-slider-review").hover(
  function () {
     $('div.div-slider').slideDown('medium');
  }, 
  function () {
     $('div.div-slider').slideUp('medium');
  }
);

});
</script>