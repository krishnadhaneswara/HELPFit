<?php 
include '../conf/conn.php';
$This=$_GET["This"];
?>
<form method='post' action='../system/revprg.php'>
	<table>
		<tr>
			<td>comments</td>
			<td><input type="text" name="comments"></td>
		</tr>
		<tr>
			<td>rate</td>
			<td><td><input type="number" name="rate" id="rate" min="1" max="5"></td></td>
			<input type="hidden" name="This" value="<?php echo $This ?>">
		</tr>
		<tr><td><input type="submit" name="submit"></td></tr>
	</table>
	
</form>