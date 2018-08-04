<?php session_start();include '../conf/conn.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>HELP FIT</title>
</head>
<body>
	<center>
		<h1>Welcome! <?php echo $_SESSION["username"]; ?></h1>
		<h2><a href="../system/logout.php">logout</a></h2>
		<br>
		<?php include '../system/check_user.php'; ?>
	</center>
	<?php include '../system/user_menu.php'; ?>
	<center>
	<?php include '../system/getprofile.php'; ?>	
	</center>
	<center>
		<?php if ($_SESSION["User_type"]==2): ?>
			<?php include '../public/formrev.php'; ?>
		<?php endif ?>
	</center>
</body>
</html>