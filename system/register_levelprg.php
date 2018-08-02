<?php
	session_start();
	$user_id = $_SESSION["user_id"];;
	$level = $_POST["level"];
	$count = 0;

	include '../conf/conn.php';

	$sql = "INSERT INTO member (user_id, level)
		VALUES ('$user_id', '$level')";

	$query = "SELECT * FROM member WHERE user_id = '$user_id'";
	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);

	if ($count==0) {
		# code...
		if ($con->query($sql) === TRUE) {
			echo "New record created successfully";

			$_SESSION["User_type"]=2;
			while ($row = $result->fetch_assoc()) {
				# code...
				$_SESSION["Member_id"]=$row["member_id"];
			}
		    header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		} else {
			echo "Error: " . $sql . "<br>" . $con->error;
		    header("Location: ../Auth/register_member.php"); /* Redirect browser */
			exit();
		}
	} else {
		$con->close();
		header("Location: ../public/dash.php"); /* Redirect browser */
		exit();
	}
	$con->close();
?>
