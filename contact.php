<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="images/icon-Google-Fit.png" type="image/png">
<title>HELP.Fit</title>
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
 <div class="header head1">
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
                <form method="post" action="../HELPFit/system/loginprg.php">
                  <h3>Signin with your account </h3>
                  <input type="text" placeholder="Enter your Username" name="username" required="">
                  <input type="password" placeholder="Password" name="password" required="">
                  <h4><a href="#">Forgot password</a></h4>
                  <div class="single-bottom">
                    <input type="checkbox"  id="brand" value="">
                    <label for="brand"><span></span>Remember Me.</label>
                  </div>
                  <input type="submit" value="Log In" >
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
              <form action="registerLecturer.php" method="post">
                <h3>Create New Acount</h3>
                <input type="text" placeholder="Lecturer ID" name="lecturerID" required="">
                <input type="text" placeholder="Full Name" name="name" required="">
                <input type="email" placeholder="Email Address" name="email" required="">
                <input type="text" placeholder="Username" name="username" required="">
                <input type="password" placeholder="Password" name="password" required="">
                <input type="submit" name="register" value="CREATE ACCOUNT" >
              </form>
            </div>
            <p>By registering you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
          </div>
        </div>
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
								<li><a href="index.php">Home </a></li>
								<li><a class="active" href="contact.php">Contact</a></li>
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
	<div class="contact">
		<div class="container">
			<div class="contact-head">
				<h2 >Contact Us</h2>
				<p>Feel free to contact us anytime if you have any issue regarding to our website or suggestion on how it supposed to be, we will
				respond with an open hand and we are up to suggestion. Get connected with us.</p>
			</div>
			<div class="contact-grids">
				<div class="col-md-8 map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.1939988976374!2d115.2245233143309!3d-8.67309299376826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd240f24881c587%3A0xe8413f111e0aa096!2sSTIKOM+Bali!5e0!3m2!1sen!2sid!4v1480993899247" width="800" height="417" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
				<div class="col-md-4 con-grid">
					<div class="contact-grid1">
						<i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
						<div class="con-ic">
							<p>Jl. Raya Puputan No. 86 Renon, Bali <span>Indonesia.</span></p>
						</div>
							<div class="clearfix"> </div>
					</div>
					<div class="contact-grid contact-grid1">
						<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
						<div class="con-ic">
							<p>+1234 758 839<span>+1273 748 730</span></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="contact-grid1">
						<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
						<div class="con-ic">
							<p><a href="mailto:info@example.com">info@helpfit.com</a><span><a href="mailto:info@example.com">customer@helpfit.com</a></span></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="content-bottom">
				<h1>Write to Us</h1>
			</div>
			<form action="#" method="post">
				<div class="contact-grids1">
					<div class="contact-me ">
						<h4>Message</h4>
						<textarea  name="Message"  placeholder="" required=""> </textarea>
					</div>
					<div class="col-md-5 contact-form1">
						<h4>Name</h4>
						<input type="text" name="Name" placeholder="" required="">
					</div>
					<div class="col-md-5 contact-form1">
						<h4>Email</h4>
						<input type="email" name="Email" placeholder="" required="">
					</div>
					<div class="col-md-2 contact-form">
						<input type="submit" value="Submit" >
					</div>
					<div class="clearfix"> </div>
				</div>
				</form>
		</div>
	</div>
<div class="footer">
	<div class="container">
		<div class="col-md-6 footer-left">
			<h3>Information</h3>
			<p class="para">Minerva brings together student and lecturer to evaluate topic in school and learning extra topic outside
			of school, to improve understanding and learning process.</p>
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
				<li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@minerva.com</a></li>
			</ul>
			<p class="copy-right">© 2016 Minerva.
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</body>
</html>
