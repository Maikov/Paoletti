<?php
/*

SQL Buddy - Web based MySQL administration
http://www.sqlbuddy.com/

home.php
- create a new database, links, etc

MIT license

2008 Calvin Lough <http://calv.in>

*/

include "functions.php";

loginCheck();

?>
<table class="hometable">
	<tr>
		<td class="inputfield">
		<?php echo __("Language"); ?>:
		</td>
		<td>
		<?php
		
		if (sizeof($langList) > 0) {
			
			echo '<select id="langSwitcher" onchange="switchLanguage()">';
			
			foreach ($langList as $langCode => $langName) {
				echo '<option value="' . $langCode . '"';
				
				if ($lang == $langCode)
					echo " selected";
				
				echo '>' . $langName . '</option>';
			}
			
			echo '</select>';
			
		}
		
		?>
		</td>
	</tr>
	</table>
	
	</td>
</tr>
<tr>
	<td>
	<h4><?php echo __("Did you know..."); ?></h4>
	</td>
</tr>
<tr>
	<td style="padding: 0 0 10px 10px;">
	
	<p><?php
	
	$didYouKnow[] = __("There is an easier way to select a large group of items when browsing table rows. Check the first row, hold the shift key, and check the final row. The checkboxes between the two rows will be automatically checked for you.");
	$didYouKnow[] = __("The columns in the browse and query tabs are resizable. Adjust them to as wide or narrow as you like.");
	$didYouKnow[] = __("The login page is based on a default user of root@localhost. By editing config.php, you can change the default user and host to whatever you want.");
	
	$rand = rand(0, count($didYouKnow) - 1);
	
	echo $didYouKnow[$rand];
	
	?></p>
			
	</td>
</tr>
<tr>
	<td>
	<h4><?php echo __("Keyboard shortcuts"); ?></h4>
	</td>
</tr>
<tr>
	<td style="padding: 4px 0 5px 10px">
	
	<table class="keyboardtable">
	<tr>
		<th><?php echo __("Press this key..."); ?></th>
		<th><?php echo __("...and this will happen"); ?></th>
	</tr>
	<tr>
		<td>a</td>
		<td><?php echo __("select all"); ?></td>
	</tr>
	<tr>
		<td>n</td>
		<td><?php echo __("select none"); ?></td>
	</tr>
	<tr>
		<td>e</td>
		<td><?php echo __("edit selected items"); ?></td>
	</tr>
	<tr>
		<td>d</td>
		<td><?php echo __("delete selected items"); ?></td>
	</tr>
	<tr>
		<td>r</td>
		<td><?php echo __("refresh page"); ?></td>
	</tr>
	<tr>
		<td>q</td>
		<td><?php echo __("load the query tab"); ?></td>
	</tr>
	<tr>
		<td>f</td>
		<td><?php echo __("browse tab - go to first page of results"); ?></td>
	</tr>
	<tr>
		<td>l</td>
		<td><?php echo __("browse tab - go to last page of results"); ?></td>
	</tr>
	<tr>
		<td>g</td>
		<td><?php echo __("browse tab - go to previous page of results"); ?></td>
	</tr>
	<tr>
		<td>h</td>
		<td><?php echo __("browse tab - go to next page of results"); ?></td>
	</tr>
	<tr>
		<td>o</td>
		<td><?php echo __("optimize selected tables"); ?></td>
	</tr>
	</table>
</tr>
</table>