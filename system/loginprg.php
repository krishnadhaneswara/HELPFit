<?php
	$username = $_POST["username"];
	$password = $_POST["password"];
	$count = 0;
	
	include '../conf/conn.php';

	$query = "SELECT * FROM user WHERE username = '$username' AND password = '$password' ";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count!=0) {
		# code...
		session_start();
		while ($row = $result->fetch_assoc()) {
			# code...
			$_SESSION["username"]=$row["username"];
			$_SESSION["fullname"]=$row["fullname"];
			$_SESSION["user_id"]=$row["user_id"];
		}

		$con->close();
		header("Location: ../public/dash.php");
	} else {
		$con->close();
		header("Location: ../Auth/login.php"); /* Redirect browser */
		exit();
	}
?>