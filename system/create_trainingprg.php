<?php
  session_start();
  if (isset($_SESSION["Trainer_id"])) {
    // code...
    $title = $_POST["title"];
    $the_date = $_POST["date"];
    $the_time = $_POST["time"];
    $fee = $_POST["fee"];
    $status = $_POST["status"];
    $trainer_id = $_SESSION["Trainer_id"];
    $max_participant = $_POST["max_participant"];
    
  	include '../conf/conn.php';

  	$sql = "INSERT INTO training_session (title, the_date, the_time, fee, status, trainer_id, max_participant)
  		VALUES ('$title', '$the_date', '$the_time', '$fee', '$status', '$trainer_id', 
      '$max_participant')";
    //echo $sql;

		if ($con->query($sql) === TRUE) {
			echo "New record created successfully";
		    header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		} else {
			echo "Error: " . $sql . "<br>" . $con->error;
		  //header("Location: ../public/create_training.php"); /* Redirect browser */
			exit();
		}
  	$con->close();
  } else {
    // code...
    header("Location; ../public/dash.php");
  }
?>
