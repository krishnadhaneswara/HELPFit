<?php
	session_start();
	$member_id = $_SESSION["Member_id"];
	$trainer_id = $_POST["This"];
	$rating = $_POST["rate"];
	$comments = $_POST["comments"];
	$count = 0;
	
	include '../conf/conn.php';

	$sql = "INSERT INTO review (member_id, trainer_id, rating, comments)
		VALUES ('$member_id', '$trainer_id', '$rating', '$comments')";

	$query = "SELECT * FROM review WHERE member_id = '$member_id' and trainer_id='$trainer_id";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count==0) {
		# code...
		if ($con->query($sql) === TRUE) {
			$con->close();
		    echo "New record created successfully";
		    header("Location: ../public/profile.php?This=".$trainer_id); /* Redirect browser */
			exit();
		} else {
		    echo "Error: " . $sql . "<br>" . $con->error;
		    //header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		}
	} else {
		$con->close();
		//header("Location: ../public/dash.php"); /* Redirect browser */
		exit();
	}
	$con->close();
?>