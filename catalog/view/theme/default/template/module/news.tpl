<?php if ($news) { ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <?php foreach ($news as $news_story) { ?>
      <div class="box-news" style="margin-bottom: 20px;">
          <?php if ($news_story['image']) { ?>
          <a href="<?php echo $news_story['href']; ?>">
              <img src="<?php echo $news_story['image']; ?>" />
          </a>
          <?php } ?>
        <h2><?php echo $news_story['title']; ?></h2>
        <?php echo $news_story['description']; ?> <a href="<?php echo $news_story['href']; ?>"><?php echo $text_read_more; ?></a>
        <div><font color="Grey"><b><?php echo $text_date_added; ?></b> <?php echo $news_story['date_added']; ?></font></div>
      </div>
    <?php } ?>
  </div>
</div>
<?php } ?>
