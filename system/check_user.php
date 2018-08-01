<?php 
	include '../conf/conn.php';

	$user_id = $_SESSION["user_id"];
	$count=0;

	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);

	if ($count==0) {
		# code...
		?>
		<a href="../Auth/register_trainer.php">Become trainer</a>
		<?php
	}

	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);
	if ($count==0) {
		# code...
		?>
		<a href="../Auth/regis_member.php">Become Member</a>
		<?php
	}
?>