<!DOCTYPE html>
<html>
<head>
<title>HELP.Fit</title>
<link rel="icon" href="images/icon-Google-Fit.png" type="image/png">
<link href="style/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link href="style/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/bootstrap.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Catamaran:400,100,300,500,700,600,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
 <div class="header">
	<div class="container">
		<div class="head-top">
			<div class="logo">
				<a href="index.php"><img src="images/fitness-icon-png-289.png" width="150" height="100" alt="HELPFit Logo" title="HELPFit"></a>
			</div>
			<div class="login">
				<ul class="nav-login">
          <li><a href="#" data-toggle="modal" data-target="#modalLogin">Log In</a></li>
					<li><a href="#" data-toggle="modal" data-target="#modalSignUp">Sign Up</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
  <div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content modal-info">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body modal-spa">
          <div class="login-grids">
              <div class="login-right">
                <form method="post" action="system/loginprg.php">
                  <h3>Signin with your account </h3>
                  <input type="text" placeholder="Enter your Username" name="username" required="">
                  <input type="password" placeholder="Password" name="password" required="">
                  <h4><a href="#">Forgot password</a></h4>
                  <div class="single-bottom">
                    <input type="checkbox"  id="brand" value="">
                    <label for="brand"><span></span>Remember Me.</label>
                  </div>
                  <input type="submit" value="LOG IN" >
                </form>
              </div>
            <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="modalSignUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content modal-info">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body modal-spa">
          <div class="login-grids">
            <div class="login-right">
              <form method="post" action="system/registerprg.php">
                <h3>Create New Acount</h3>
                <input type="text" placeholder="Username" name="username" id="username" required="">
                <input type="password" placeholder="Password" name="password" id="password" required="">
                <input type="text" placeholder="Full Name" name="fullname" id="fullname" required="">
                <input type="email" placeholder="Email Address" name="email" id="email" required="">
                <input type="submit" name="register" value="CREATE ACCOUNT" >
              </form>
            </div>
            <p>By registering you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
		<div class="banner">
			<div class="container">
				<div class="banner-text">
					<h2><b>HELP</b>Fit</h2>
					<p>for a Healthier Lifestyle</p>
				</div>
			</div>
		</div>
		<div class="nav-top">
			<div class="container">
				<div class="nav1">
					<div class="navbar1">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" >
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav cl-effect-8">
								<li ><a class="active" href="index.php">Home </a></li>
								<li><a href="contact.php">Contact</a></li>
							</ul>
						</div>
					</div>
					<ul class="social-ic">
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic"></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
</div>
<div class="footer">
	<div class="container">
		<div class="col-md-6 footer-left">
			<h3>Information</h3>
			<p class="para"><b>HELP</b>Fit connecting the Sports Trainer and Sports Enthusiast in one website that can be accessed anywhere using any platform.</p>
			<h3>Newsletter<label></label></h3>
			<form action="#" method="post">
				<input type="text" value="Name" name="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
				<input type="email" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<input type="submit" value="Submit">
			</form>
		</div>
		<div class="col-md-6 footer-right">
			<h3>Contact Us</h3>
			<ul class="con-icons">
				<li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+123 456 7890</li>
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@helpfit.com</a></li>
			</ul>
			<p class="copy-right">&copy; 2018 <b>HELP</b>Fit.
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</body>
</html>
