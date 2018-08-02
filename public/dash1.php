<?php
session_start();
if (!isset($_SESSION["user_id"])){
	header("Location: ../");
}
?>
<!DOCTYPE html>
<html>
<head>
<title>HELP.Fit</title>
<link rel="icon" href="../images/icon-Google-Fit.png" type="image/png">
<link href="../style/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link href="../style/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/bootstrap.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Catamaran:400,100,300,500,700,600,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
 <div class="header-dash">
	<div class="container">
		<div class="head-top">
			<div class="logo">
				<a href="index.php"><img src="../images/fitness-icon-png-289.png" width="150" height="100" alt="HELPFit Logo" title="HELPFit"></a>
			</div>
			<div class="login">
				<ul class="nav-login">
					<li><a href="../system/logout.php">Log Out</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
		<div class="banner">
			<div class="container">
				<div class="banner-text">
					<h2>Welcome! <b><?php echo $_SESSION["username"]; ?></b></h2>
          <?php include '../system/check_user.php'; ?>
				</div>
			</div>
		</div>
</div>
</body>
</html>
