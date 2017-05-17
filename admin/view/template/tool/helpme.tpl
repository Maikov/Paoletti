<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/review.png" alt="" /> <?php echo $heading_title; ?></h1>
    </div>
    <div class="content">
      <form action="<?php echo $send_it; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <?php if (!isset($invite_link)) { ?>
          <tr>
            <td align="right"><img src="view/image/information.png" alt="" /></td>
            <td><?php echo $intro; ?></td>
          </tr>
          <tr>
              <td><?php echo $more_contacts; ?></td>
              <td><textarea name="contacts" value="" cols="42" rows="3" /></textarea></td>
          </tr>
          <tr>
              <td><?php echo $instructions; ?></td>
              <td><textarea name="task" value="" cols="80" rows="13" /></textarea>
                  <br/><br/>
                  <a onclick="$('#form').submit();" class="button"><?php echo $inv_send; ?></a>
              </td>
          </tr>
          <?php } else { ?>
            <tr>
                <td align="right"><img src="view/image/information.png" alt="" /></td>
                <td><b><?php echo $active; ?></b><br/><?php echo $invite_wait; ?></td>
            </tr>
          <?php } ?>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>