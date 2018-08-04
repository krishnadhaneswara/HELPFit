<?php 
$training_session_id = $_GET['This'];
$query = "SELECT * FROM training_session WHERE training_session_id=$training_session_id";
$result = mysqli_query($con,$query);
if (!$result) {
  printf("Error: %s\n", mysqli_error($con));
  exit();
}
?>

<?php  
while($row = mysqli_fetch_array($result)){
	if ($row['max_participant']>=1) {
		# code...
		//echo "person";
		?>
		<form method='post' action='../system/joinprg.php'>
			<tr>
				<td><input type="text" name="note" id="note"></td>
				<input type="hidden" name="this" value="<?php echo $training_session_id; ?>" >
			</tr>
			<tr>
				<td><input type="submit" name="submit"></td>
			</tr>
		</form>
		<?php 
	}else
	{
		$query = "SELECT * FROM group_training WHERE training_session_id=$training_session_id";
		$result = mysqli_query($con,$query);
		$count = mysqli_num_rows($result);
		if ($row['max_participant']<$count) {
			# code...
			?>
			<form method='post' action='../system/joinprg.php'>
				<tr>
					<td>Class type</td>
					<td><input type="text" name="type" id="type"></td>
					<input type="hidden" name="this" value="<?php echo $training_session_id; ?>" >
					<td><input type="submit" name="submit"></td>
				</tr>
			</form>
			<?php 
		} else {
			# code...
			echo "<H2>This session already full!</H2>";
		}
	}
}
?>
	
