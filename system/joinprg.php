<?php 
	session_start();
	include '../conf/conn.php';
	$member_id = $_SESSION["Member_id"];
	$trainID = $_POST["this"];
	if (isset($_POST["note"])) {
		# code...
		$note = $_POST["note"];
		$sql = "INSERT INTO personal_training (member_id, notes, training_session_id)
			VALUES ('$member_id', '$note', '$trainID')";

	} else {
		# code...
		$type = $_POST["type"];
		$sql = "INSERT INTO group_training (member_id, class_type, training_session_id)
			VALUES ('$member_id', '$type', '$trainID')";
	}
	if ($con->query($sql) === TRUE) {
			echo "New record created successfully";
		    header("Location: ../public/history.php"); /* Redirect browser */
			exit();
		} else {
			echo "Error: " . $sql . "<br>" . $con->error;
		    //header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		}
  	$con->close();
?>