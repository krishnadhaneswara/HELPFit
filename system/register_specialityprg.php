<?php
	session_start();
	$user_id = $_SESSION["user_id"];;
	$speciality = $_POST["speciality"];
	$count = 0;
	
	include '../conf/conn.php';

	$sql = "INSERT INTO trainer (user_id, speciality)
		VALUES ('$user_id', '$speciality')";

	$query = "SELECT * FROM trainer WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count==0) {
		# code...
		if ($con->query($sql) === TRUE) {
			echo "New record created successfully";
		    header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		} else {
			echo "Error: " . $sql . "<br>" . $con->error;
		    header("Location: ../Auth/register_trainer.php"); /* Redirect browser */
			exit();
		}
	} else {
		$con->close();
		header("Location: ../Auth/register.php"); /* Redirect browser */
		exit();
	}
	$con->close();
?>