<?php
	$username = $_POST["username"];
	$password = $_POST["password"];
	$fullname = $_POST["fullname"];
	$email = $_POST["email"];
	$count = 0;
	
	include '../conf/conn.php';

	$sql = "INSERT INTO user (username, password, fullname, email)
		VALUES ('$username', '$password', '$fullname', '$email')";

	$query = "SELECT * FROM user WHERE email = '$email'";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count==0) {
		# code...
		if ($con->query($sql) === TRUE) {
			$con->close();
		    echo "New record created successfully";
		    header("Location: ../index.php"); /* Redirect browser */
			exit();
		} else {
			$con->close();
		    echo "Error: " . $sql . "<br>" . $con->error;
		    header("Location: ../Auth/register.php"); /* Redirect browser */
			exit();
		}
	} else {
		$con->close();
		header("Location: ../Auth/register.php"); /* Redirect browser */
		exit();
	}
	$con->close();
?>