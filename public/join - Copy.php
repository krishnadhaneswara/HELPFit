<?php include '../conf/conn.php'; session_start();?>
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
  	<center>
    	<table>
      		<?php include '../system/formJoin.php'; ?>  
    	</table>
  </center>
</body>
</html>