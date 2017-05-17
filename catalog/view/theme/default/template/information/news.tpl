<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box-content">
      <?php if (isset($image)) { ?>
      <img src="<?php echo $image; ?>" />
      <?php } ?>
      <h1><?php echo $heading_title; ?></h1>
  <?php if (isset($news_info)) { ?>
    <div class="box-news" >
      <?php echo $description; ?>
    </div>
    <div class="buttons">
      <div class="right"><a onclick="location='<?php echo $news; ?>'" class="button"><span><?php echo $button_news; ?></span></a></div>
    </div>
  <?php } elseif (isset($news_data)) { ?>
    <?php foreach ($news_data as $news) { ?>
      <div class="box-news">
          <?php if ($news['image']) { ?>
          <a href="<?php echo $news['href']; ?>">
          <img src="<?php echo $news['image']; ?>" />
          </a>
          <?php } ?>
        <h2><?php echo $news['title']; ?></h2>
        <?php echo $news['description']; ?> <a href="<?php echo $news['href']; ?>"><?php echo $text_read_more; ?></a></p>
        <p><font color="Grey"><b><?php echo $text_date_added; ?></b>&nbsp;<?php echo $news['date_added']; ?></font></p>
      </div>
    <?php } ?>
  <?php } ?>
</div>
<?php echo $footer; ?>
