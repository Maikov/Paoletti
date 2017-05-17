<?php
foreach ($mylist as $list_num=>$list) { ?>
<div id="list<?php echo $list_num;?>" style="padding-left: 200px;">

  <input type="hidden" name="mylist[<?php echo $list_num; ?>][type]" value="<?php if (isset($list['type'])) echo $list['type']; else echo 'blogs'; ?>">

<table>
    <tr>
    <td>
    </td>
    <td>
	 <div class="buttons"><a onclick="mylist_num--; $('#amytabs<?php echo $list_num;?>').remove(); $('#mytabs<?php echo $list_num;?>').remove(); $('#mytabs a').tabs(); return false; " class="mbuttonr"><?php echo $this->language->get('button_remove'); ?></a></div>
    </td>
    </tr>

	 <?php foreach ($languages as $language) { ?>
	<tr>
			<td>
			<?php echo $this->language->get('entry_title_list_latest'); ?> (<?php echo  ($language['name']); ?>)

		</td>

			<td>

				<input type="text" name="mylist[<?php echo $list_num; ?>][title_list_latest][<?php echo $language['language_id']; ?>]" value="<?php if (isset($list['title_list_latest'][$language['language_id']])) echo $list['title_list_latest'][$language['language_id']]; ?>" size="60" /><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
			</td>

	</tr>
   <?php } ?>




	<tr>
			<td>
			<?php echo $this->language->get('entry_template'); ?>

		</td>

			<td>
				<input type="text" name="mylist[<?php echo $list_num; ?>][template]" value="<?php if (isset($list['template'])) echo $list['template']; ?>" size="60" />
			</td>

	</tr>
	<tr>
			<td>
			<?php echo $this->language->get('entry_blog_num_comments'); ?>

		</td>

			<td>
				<input type="text" name="mylist[<?php echo $list_num; ?>][number_comments]" value="<?php  if (isset( $list['number_comments'])) echo $list['number_comments']; ?>" size="3" />
			</td>

	</tr>


            <tr>
              <td><?php echo $this->language->get('entry_comment_status'); ?></td>
              <td><select name="mylist[<?php echo $list_num; ?>][status]">
                  <?php if ($list['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>



            <tr>
              <td><?php echo $this->language->get('entry_comment_status_reg'); ?></td>
              <td><select name="mylist[<?php echo $list_num; ?>][status_reg]">
                  <?php if ($list['status_reg']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>

            <tr>
              <td><?php echo $this->language->get('entry_comment_status_now'); ?></td>
              <td><select name="mylist[<?php echo $list_num; ?>][status_now]">
                  <?php if ($list['status_now']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>



            <tr>
              <td><?php echo $this->language->get('entry_comment_rating'); ?></td>
              <td><select name="mylist[<?php echo $list_num; ?>][rating]">
                  <?php  if (isset( $list['rating'])) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>




		    <tr>
		     <td class="left"><?php echo $this->language->get('entry_comment_rating_num'); ?></td>
		     <td class="left">
		      <input type="text" name="mylist[<?php echo $list_num; ?>][rating_num]" value="<?php  if (isset($list['rating_num'])) echo $list['rating_num']; ?>" size="3" />
		     </td>
		    </tr>

	<tr>
 		<td>
			<?php echo $this->language->get('entry_order_ad'); ?>
		</td>
		<td>
         <select id="mylist_<?php echo $list_num; ?>_order_ad"  name="mylist[<?php echo $list_num; ?>][order_ad]">
           <option value="desc"  <?php if (isset( $list['order_ad']) &&  $list['order_ad']=='desc') { echo 'selected="selected"'; } ?>><?php echo $this->language->get('text_what_desc'); ?></option>
           <option value="asc"   <?php if (isset( $list['order_ad']) &&  $list['order_ad']=='asc')  { echo 'selected="selected"'; } ?>><?php echo $this->language->get('text_what_asc'); ?></option>
        </select>
		</td>



</table>



   <table class="mytable" id="table_fields" >
     <thead>
      <tr>
       <td class="left" style="width: 100%"><div style="width: 100%"><?php echo $this->language->get('entry_title_list_latest'); ?></div></td>
       <td class="right" style="width: 100%"><div style="width: 100%"><?php echo $this->language->get('text_sort_order'); ?></div></td>
       <td style="width: 300px;"><?php echo $this->language->get('text_action'); ?></td>
      </tr>

     </thead>
        <?php
          $fields_row = 0;
        ?>

      <?php



       if (isset($list['addfields']) && !empty($list['addfields'])) {
        foreach ($list['addfields'] as $num_field => $field) {

         while (!isset($list['addfields'][$fields_row])) {
          $fields_row++;
         }

        ?>
          <tr id="field-row<?php echo $num_field; ?>">


            <td class="left" > <!-- <?php echo $num_field; ?>&nbsp; -->
	 		<?php foreach ($languages as $language) { ?>

                <div style=" overflow: hidden;">
				<div style="float: left; font-size: 11px; width: 77px; text-decoration: none;"><?php echo  ($language['name']); ?></div>
				<div style="float: left;">
					<input type="text" name="mylist[<?php echo $list_num; ?>][addfields][<?php echo $num_field; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php if (isset($field['title'][$language['language_id']])) echo $field['title'][$language['language_id']]; ?>" size="50" /><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
				</div>
				</div>

			   	<?php } ?>
			</td>

            <td class="right">
            <input type="text" name="mylist[<?php echo $list_num; ?>][addfields][<?php echo $num_field; ?>][sort_order]" value="<?php echo $field['sort_order']; ?>" size="3" />
            </td>

            <td class="left">
            <div style="float:left; width: 100px;">
             <a onclick="$('#field-row<?php echo $num_field; ?>').remove();" class="mbuttonr"><?php echo $this->language->get('button_remove');?></a>
           </div>
           </td>

      </tr>



        <?php
        }
        } else  {        ?>
       <td class="left"><div style="width: 100%">&nbsp;</div></td>
       <td class="right"><div style="width: 100%">&nbsp;</div></td>
       <td style="width: 200px;"><div style="width: 100%">&nbsp;</div></td>
        <?php
        }

        ?>
        <tfoot>
          <tr>
            <td colspan="2"></td>
            <td class="left"><a id="add_f"  class="markbutton"><?php echo $this->language->get('text_action_add_field'); ?></a></td>
          </tr>
        </tfoot>
      </table>


</div>

<?php }   ?>


<script>
var afields_row = Array();

<?php
if (isset($list['addfields'])) {
 foreach ($list['addfields'] as $indx => $module) {
?>
afields_row.push(<?php echo $indx; ?>);
<?php
 }
}
?>
var num_field =<?php echo $fields_row; ?>;


function addfields() {var aindex = -1;
	for(i=0; i<afields_row.length; i++) {
	 flg = jQuery.inArray(i, afields_row);
	 if (flg == -1) {
	  aindex = i;
	 }
	}
	if (aindex == -1) {
	  aindex = afields_row.length;
	}
	num_field = aindex;
	afields_row.push(aindex);




addfields = '<tr>';

addfields+= '<td class="left">';
//addfields+= num_field + '&nbsp;';
	 		<?php foreach ($languages as $language) { ?>


addfields+= '	               <div style="width: 100%">';
addfields+= '					<div style="float: left; font-size: 11px; width: 77px; text-decoration: none;"><?php echo  ($language['name']); ?></div>';
addfields+= '					<div style="">';

addfields+= '<input type="text" name="mylist[<?php echo $list_num; ?>][addfields]['+num_field +'][title][<?php echo $language['language_id']; ?>]" value="" size="50" /><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" >';


addfields+= '					</div>';
addfields+= '					</div>';



			   	<?php } ?>
addfields+= '			</td>';
addfields+= '            <td class="right">';
addfields+= '            <input type="text" name="mylist[<?php echo $list_num; ?>][addfields]['+num_field +'][sort_order]" value="" size="3" />';
addfields+= '            </td>';
addfields+= '            <td class="left">';
addfields+= '            <div style="float:left; width: 100px;">';
addfields+= '             <a onclick="$(\'#field-row' + num_field + '\').remove();" class="mbuttonr"><?php echo $this->language->get('button_remove');?></a>';
addfields+= '           </div>';
addfields+= '    </td>';
addfields+= ' </tr>';

html  = '<tbody id="field-row' + num_field + '">' + addfields + '</tbody>';

$('#table_fields tfoot').before(html);
num_field++;
}

$('#add_f').bind('click',{ }, addfields);
</script>





