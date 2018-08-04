<?php 
include '../conf/conn.php';
session_start();
$This=$_POST["This"];
$query = "SELECT * FROM training_session WHERE training_session_id=$This";
$result = mysqli_query($con,$query);
$count = mysqli_num_rows($result);
if ($count!=0) {
	# code...
	$title = $_POST["title"];
    $the_date = $_POST["date"];
    $the_time = $_POST["time"];
    $fee = $_POST["fee"];

    $queryUpdate = "UPDATE training_session
    	SET title='$title', the_date='$the_date', the_time='$the_time', fee='$fee'
    	WHERE training_session_id=$This";
    if ($con->query($queryUpdate) === TRUE) {
			echo "New record created successfully";
		    header("Location: ../public/dash.php"); /* Redirect browser */
			exit();
		} else {
			echo "Error: " . $queryUpdate . "<br>" . $con->error;
		  //header("Location: ../public/create_training.php"); /* Redirect browser */
			exit();
		}
  	$con->close();
}
?>