<?php
	$username = $_POST["username"];
	$password = $_POST["password"];
	$count = 0;
	session_start();

	include '../conf/conn.php';

	$query = "SELECT * FROM user WHERE username = '$username' AND password = '$password' ";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count!=0) {
		# code...

		while ($row = $result->fetch_assoc()) {
			# code...
			$_SESSION["username"]=$row["username"];
			$_SESSION["fullname"]=$row["fullname"];
			$_SESSION["user_id"]=$row["user_id"];
			$user_id=$row["user_id"];
			$_SESSION["User_type"]=0;
		}
	} else {
		$con->close();
		header("Location: ../Auth/login.php"); /* Redirect browser */
		exit();
	}

	$count2=0;
	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count2 = mysqli_num_rows($result);

	if ($count2!=0) {
		# code...
		$_SESSION["User_type"]=1;
		while ($row = $result->fetch_assoc()) {
			# code...
			$_SESSION["Trainer_id"]=$row["trainer_id"];
		}
		$con->close();
		header("Location: ../public/dash.php");
	}

	$count2=0;
	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count2 = mysqli_num_rows($result);
	if ($count2!=0) {
		# code...
		$_SESSION["User_type"]=2;
		while ($row = $result->fetch_assoc()) {
			# code...
			$_SESSION["Member_id"]=$row["member_id"];
		}
		$con->close();
		header("Location: ../public/dash.php");
	}else{
		$con->close();
		header("Location: ../public/dash.php");
	}
?>
