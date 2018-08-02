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
<script src="../js/jquery.min.js"></script>
<link href="../style/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="../js/bootstrap.min.js"></script>
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
					<h2><b>Create New</b></br>Training Session</h2>
				</br></br>
					<ul class="nav-login">
						<li><a href="#" data-toggle="modal" data-target="#modalG">Create Group</a></li>
						<li><a href="#" data-toggle="modal" data-target="#modalP">Create Personal</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	  <div class="modal fade" id="modalG" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content modal-info">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        </div>
	        <div class="modal-body modal-spa">
	          <div class="login-grids">
	              <div class="login-right">
	                <form method="post" action="../system/create_trainingprg.php">
	                  <h3>Create Group Session </h3>
	                  <input type="text" placeholder="Enter Session Title" name="title" id="title" required=""></br></br>
										<input type="date" placeholder="Enter Date" name="date" id="date" required="">
										<input type="time" placeholder="Enter Time" name="time" id="time" required="">
										<input type="text" placeholder="Session Fee" name="fee" id="fee" required="">
										<input type="hidden" name="status" value="2">
										<input type="text" placeholder="Input Max Number Participant" name="max_participant" id="max_participant">
	                  <input type="submit" value="CREATE GROUP SESSION" >
	                </form>
	              </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="modal fade" id="modalP" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content modal-info">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        </div>
	        <div class="modal-body modal-spa">
	          <div class="login-grids">
	              <div class="login-right">
	                <form method="post" action="../system/create_trainingprg.php">
	                  <h3>Create Personal Session </h3>
	                  <input type="text" placeholder="Enter Session Title" name="title" id="title" required=""></br></br>
										<input type="date" placeholder="Enter Date" name="date" id="date" required="">
										<input type="time" placeholder="Enter Time" name="time" id="time" required="">
										<input type="text" placeholder="Session Fee" name="fee" id="fee" required="">
										<input type="hidden" name="status" value="1">
										<input type="hidden" name="max_participant" value="1">
	                  <input type="submit" value="CREATE PERSONAL SESSION" >
	                </form>
	              </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
</div>
</body>
</html>
