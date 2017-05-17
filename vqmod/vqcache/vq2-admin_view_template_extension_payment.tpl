<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error) { ?>
  <div class="warning"><?php echo $error; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_name; ?></td>
            <td></td>
            <td class="left"><?php echo $column_status; ?></td>
            <td class="right"><?php echo $column_sort_order; ?></td>
            
          </tr>
        </thead>
        <tbody>
          <?php if ($extensions) { ?>
          <?php foreach ($extensions as $extension) { ?>
          <tr onclick="location='<?php echo $extension['action'][0]['href']; ?>'" style="cursor: pointer;">

            <td class="left"><b><?php echo $extension['name']; ?></b></td>
            <td class="center"><?php echo $extension['link'] ?></td>
            <td class="left"><?php echo $extension['status'] ?></td>
            <td class="right"><?php echo $extension['sort_order']; ?></td>
            


          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
<!--MXS-->
          <?php if ($disabled) { ?>
          <?php foreach ($disabled as $extension) { ?>
          <tr onclick="location='<?php echo $extension['action'][0]['href']; ?>'" style="cursor: pointer;">
              <td class="left"><font color="Grey"><?php echo $extension['name']; ?></font></td>
              <td class="center"><?php echo $extension['link'] ?></td>
            <td class="left"><?php echo $extension['status'] ?></td>
            <td class="right"><?php echo $extension['sort_order']; ?></td>
          </tr>
          <?php } ?>
          <?php } ?>
          <!--MXE-->
        </tbody>
      </table>
    </div>
  </div>
</div>
<?php echo $footer; ?>