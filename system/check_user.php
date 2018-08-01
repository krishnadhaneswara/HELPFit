<?php 
	include '../conf/conn.php';

	$user_id = $_SESSION["user_id"];
	$count=0;
	$Check=0;
	$alreadyHave=0;

	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);

	if ($count==0) {
		# code...
		$Check=$Check+1;
	}else{
		$alreadyHave=1;
	}

	$count=0;
	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);
	if ($count==0) {
		# code...
		$Check=$Check+2;
	}else{
		$alreadyHave=1;
	}

	if ($alreadyHave==0){
		# code...
		if ($Check==2) {
			# code...
			?>
				<a href="../Auth/register_member.php">  Become Member  </a>
			<?php
		}

		if ($Check==1) {
			# code...
			?>
				<a href="../Auth/register_trainer.php">  Become trainer  </a>
			<?php
		}

		if ($Check==3) {
			# code...
			?>
				<a href="../Auth/register_member.php">  Become Member  |</a>
				<a href="../Auth/register_trainer.php">  Become trainer  </a>
			<?php
		}
	}
?>