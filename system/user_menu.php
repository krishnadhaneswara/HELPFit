<?php 
	include '../conf/conn.php';

	$user_id = $_SESSION["user_id"];
	$count=0;
	$Check=0;

	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);

	if ($count!=0) {
		# code...
		$Check=1;
	}

	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = $count + mysqli_num_rows($result);
	if ($count!=0) {
		# code...
		$Check=2;
	}

	if ($Check!=0){
		# code...
		if ($Check==2) {
			# code...
			?>
				<H1>Menu</H1>
				<ul>
					<li>
						<a href="#"> Register for Training</a>
					</li>
					<li>
						<a href="#"> Training History</a>
					</li>
				</ul>
			<?php
		}

		if ($Check==1) {
			# code...
			?>
				<H1>Menu</H1>
				<ul>
					<li>
						<a href="#"> Create new Training</a>
					</li>
					<li>
						<a href="#"> Training History</a>
					</li>
				</ul>
			<?php
		}
	}
?>