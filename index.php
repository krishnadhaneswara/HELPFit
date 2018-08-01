<?php 
session_start();
if (isset($_SESSION["user_id"])){
	header("Location: public/dash.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>HELP Fit</title>
</head>
<body>
	<center>
		<H1>Index</H1>
		<h2><a href="Auth/login.php">Login	</a>|	<a href="Auth/register.php">Register</a></h2>
	</center>
</body>
</html>