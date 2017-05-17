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
<?php } ?>


<div id="product_comments_<?php echo $product_id; ?>" style="display: view;">

<style>
input[type="text"], input[type="password"], textarea {
    background: none repeat scroll 0 0 #fbfefb;
    border: 1px solid #CCCCCC;
    padding: 3px;
}

input[name=rating]
{
   background: #FFF;
}
</style>


  <?php
  if ($comment_status)
  { ?>




  <div id="div_comment_<?php echo $product_id; ?>" >

    <div id="comment_<?php echo $product_id; ?>" >

     <?php
		echo $html_comment;
	 ?>


    </div>



    <h2 id="comment-title"><?php echo $this->language->get('text_write'); ?></h2>

    <div id="reply_comments">

 <div id="comment_work_0"  style="width: 100%; margin-top: 10px;">

    <b><ins style="color: #777;"><?php   echo $this->language->get('entry_name'); ?></ins></b>
    <br>
    <input type="text" name="name" value="<?php echo $text_login; ?>" <?php

    if (isset($customer_id))
    {
     //echo 'readonly="readonly" style="background-color:#DDD; color: #555;"';
    }

    ?>>  <?php

    if (!isset($customer_id))
    {
     echo $text_welcome;
    }

    ?>
    <div style="overflow: hidden; line-height:1px; margin-top: 5px;"></div>

    <b><ins style="color: #777;"><?php echo $this->language->get('entry_comment');  ?></ins></b><br>

    <textarea name="text" cols="40" rows="8" class="blog-record-textarea"></textarea>
    <br>
    <span style="font-size: 11px; opacity: 0.50"><?php echo $this->language->get('text_note'); ?></span>

    <div style="overflow: hidden; line-height:1px; margin-top: 5px;"></div>

    <b><ins style="color: #777;"><?php echo $this->language->get('entry_rating'); ?></ins></b>&nbsp;&nbsp;
    <span><ins style="color: red;"><?php echo $this->language->get('entry_bad'); ?></ins></span>&nbsp;

    <input type="radio" name="rating" value="1" >
    <ins class="blog-ins_rating" style="">1</ins>
    <input type="radio" name="rating" value="2" >
    <ins class="blog-ins_rating" >2</ins>
    <input type="radio" name="rating" value="3" >
    <ins class="blog-ins_rating" >3</ins>
    <input type="radio" name="rating" value="4" >
    <ins class="blog-ins_rating" >4</ins>
    <input type="radio" name="rating" value="5" >
    <ins class="blog-ins_rating" >5</ins>
    &nbsp;&nbsp; <span><ins style="color: green;"><?php echo $this->language->get('entry_good'); ?></ins></span>

    <div style="overflow: hidden; line-height:1px; margin-top: 5px;"></div>

    <?php
		  if ($captcha_status)
		  { ?>
		    <div class="captcha_status">



             </div>
		    <?php
		  }
    ?>

    <div class="buttons">
      <div class="left"><a class="button button-comment" id="button-comment-0"><span><?php echo $this->language->get('button_write'); ?></span></a></div>
    </div>


   </div>



   </div>


  </div>

  <?php } ?>


   <div style="overflow: hidden;">&nbsp;</div>

  </div>



<script type="text/javascript">
function captcha_fun()
{
 $.ajax({  type: 'POST',
			url: 'index.php?route=record/record/captcham',
			dataType: 'html',
		   	success: function(data)
		    {
		     $('.captcha_status').html(data);
  		    }
	    });
  return false;
}


$.fn.comments = function(sorting , page) {if (typeof(sorting) == "undefined") {
sorting = 'none';
}

if (typeof(page) == "undefined") {
page = '1';
}
return $.ajax({
			type: 'POST',
			url: 'index.php?route=record/treecomments/comment&product_id=<?php echo $product_id; ?>&sorting='+sorting+'&page='+page+'&mylist_position=<?php echo $this->registry->get('mylist_position');?>'+'&ajax=1',
			data: { thislist: '<?php echo base64_encode(serialize($thislist)); ?>' },
			dataType: 'html',
			async: 'false',
		   	success: function(data)
		    {
		     $('#comment_<?php echo $product_id; ?>').html(data);
		    },
		    complete: function(data)
		    {
	        //  captcha_fun();
		    }
		  });
}

// add sorting

//$('#comment_<?php echo $product_id; ?>').comments();


//captcha_fun();

$('#tab-review .pagination a').live('click', function() {

   // alert(this.href);

    $('#tab-review').prepend('<div class="attention"><img src="catalog/view/theme/<?php echo $theme; ?>/image/loading.gif" alt=""> <?php echo $text_wait; ?></div>');

    urll = this.href+'#tab-review';
    location = urll;



    $('.attention').remove();

	return false;
});


function remove_success()
{  $('.success, .warning, .attention').fadeIn().animate({
   opacity: 0.0
 }, 5000, function() {
   $('.success, .warning, .attention').remove();
 });
}

// из config и get
function comment_write(event)
{
   $('.success, .warning').remove();

   if (typeof(event.data.sorting) == "undefined")
   {
		sorting = 'none';
   }
   else
    {      sorting = event.data.sorting;
	}

	if (typeof(event.data.page) == "undefined")
	{
	  page = '1';
	}
	else
	{
      page = event.data.page;
	}

   if (typeof(this.id) == "undefined") {
      myid = '0';
    }  else  {
      myid = this.id.replace('button-comment-','');    }

    $.ajax(
	{
		type: 'POST',
		url: 'index.php?route=record/treecomments/write&product_id=<?php echo $product_id; ?>&parent=' + myid + '&page=' + page+'&mylist_position=<?php echo $this->registry->get('mylist_position');?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('#comment_work_'+myid).find('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('#comment_work_'+myid).find('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('#comment_work_'+myid).find('input[name=\'rating\']:checked').val() ? $('#comment_work_'+myid).find('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('#comment_work_'+myid).find('input[name=\'captcha\']').val()),
		beforeSend: function()
		{

            $('.success, .warning, .attention').remove();
			$('.button-comment').attr('disabled', true);

			$('#comment_<?php echo $product_id; ?>').after('<div class="attention"><img src="catalog/view/theme/<?php echo $theme; ?>/image/loading.gif" alt=""> <?php echo $text_wait; ?></div>');

		},
		error: function()
		{             $('.success, .warning, .attention').remove();
             alert('error');
		},
		success: function(data)
		{

			if (data.error)
			{
				if ( myid == '0') $('#comment-title').after('<div class="warning">' + data.error + '</div>');
				else
				$('#comment_work_'+ myid).prepend('<div class="warning">' + data.error + '</div>');



			}

			if (data.success)
			{
                   	$.when($('#comment_<?php echo $product_id; ?>').comments(sorting, page )).done(function(){

 					 if ( myid == '0')
                     {
                     	$('#comment-title').after('<div class="success">' + data.success + '</div>');
                     }
                     else
                     {
                      $('#comment_work_' + myid).append('<div class="success">'+  data.success +'</div>');
                     }
                      remove_success();

                     });



                $('.comment_count').html(data.comment_count);

				$('input[name=\'name\']').val(data.login);
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
                captcha_fun();

			}

		}
	});

}


	function subcaptcha(e) {
	   ic = $('.captcha').val();
	   $('.captcha').val(ic + this.value)
	   return false;
	}




$(document).ready(function(){
//$('#tabs a').tabs();
var product_comments_<?php echo $product_id; ?> = $('#product_comments_<?php echo $product_id; ?>').html();
$('#tab-review').html(product_comments_<?php echo $product_id; ?>);


//alert(product_comments_<?php echo $product_id; ?>);

$('#product_comments_<?php echo $product_id; ?>').hide('slow');
$('#product_comments_<?php echo $product_id; ?>').remove();
captcha_fun();
$('.button-comment').unbind();
$('.button-comment').bind('click',{ }, comment_write);

<?php if (isset($this->request->get['page'])) { ?>
$('a[href=\'#tab-review\']').trigger('click');
<?php } ?>

});



</script>