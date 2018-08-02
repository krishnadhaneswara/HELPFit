<?php
include '../conf/conn.php';
$This=$_GET["This"];
$query = "SELECT trainer.trainer_id, user.fullname, user.email FROM trainer 
INNER JOIN user ON user.user_id=trainer.user_id WHERE trainer_id=$This";
$result = mysqli_query($con,$query); 
?>
<table>
	<?php while($row = mysqli_fetch_array($result)) {
		# code...
	?>
	<tr>
		<td><?php echo $row["fullname"] ?></td>
		<td><?php echo $row["email"] ?></td>
	</tr>
	<?php 
	$query2 = "SELECT * 
	FROM review 
	WHERE trainer_id=$This";
	$result2 = mysqli_query($con,$query2);
	$count = mysqli_num_rows($result2);

	$stars=0;
	while ($row2 = mysqli_fetch_array($result2)) {
		# code...
		$stars = $stars + $row2["rating"];  
 	?>
	<tr>
		<td><?php printf("%1\$.2f",$stars/$count) ?></td>
	</tr>
	</table>
	<br>
	<?php } ?>
	
	<br>
	<table>
	<?php 
	$query2 = "SELECT * 
	FROM review 
	WHERE trainer_id=$This";
	$result2 = mysqli_query($con,$query2); ?>
	<?php while ($row2 = mysqli_fetch_array($result2)) {
		# code...  
 	?>
 	<tr>
 		<td><?php echo $row2["member_id"]; ?></td>
 		<td><?php echo $row2["comments"]; ?></td>
 		<td><?php echo $row2["rating"]; ?></td>
 	</tr>
	<?php } ?>
	</table>
	<br>
<?php } ?>
