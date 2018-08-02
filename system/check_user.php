<!-- <link href="../style/style.css" rel="stylesheet" type="text/css" media="all" /> -->
<?php
	include '../conf/conn.php';

	$user_id = $_SESSION["user_id"];
	$count=0;
	$Check=0;

	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);

	if ($count==0) {
		# code...
		$Check=$Check+1;
	}

	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);
	if ($count==0) {
		# code...
		$Check=$Check+2;
	}

	if ($Check!=0){
		# code...
		if ($Check==2) {
			# code...
			?>
				<a href="../Auth/register_member.php">  Become Member  </a>
			<?php
		}

		if ($Check==2) {
			# code...
			?>
				<a href="../Auth/register_trainer.php">  Become Trainer  </a>
			<?php
		}

		if ($Check==3) {
			# code...
			?>
				<ul class="nav-login">
					<li><a href="../Auth/register_member.php">Become Member</a></li>
					<li><a href="../Auth/register_trainer.php">Become Trainer</a></li>
				</ul>
				<!-- <a href="../Auth/register_member.php">  Become Member  |</a>
				<a href="../Auth/register_trainer.php">  Become trainer  </a> -->
			<?php
		}
	}
?>
