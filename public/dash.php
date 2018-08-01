<?php 
session_start();
if (!isset($_SESSION["user_id"])){
	header("Location: ../");
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>HELP Fit</title>
</head>
<body>
	<center>
		<h1>Welcome! <?php echo $_SESSION["username"]; ?></h1>
		<h2><a href="../system/logout.php">logout</a></h2>
		<br>
		<?php include '../system/check_user.php'; ?>
	</center>
</body>
</html>