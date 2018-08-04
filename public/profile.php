<?php
session_start();
if (!isset($_SESSION["user_id"]))
{
	header("Location: ../");
}
?>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="../images/icon-Google-Fit.png" type="image/png">
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>HELP.Fit</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet"/>
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <link href="assets/css/demo.css" rel="stylesheet" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
        var activeSystemClass = $('.list-group-item.active');

        //something is entered in search form
        $('#system-search').keyup( function() {
           var that = this;
            // affect all table rows on in systems table
            var tableBody = $('.table-list-search tbody');
            var tableRowsClass = $('.table-list-search tbody tr');
            $('.search-sf').remove();
            tableRowsClass.each( function(i, val) {

                //Lower text for case insensitive
                var rowText = $(val).text().toLowerCase();
                var inputText = $(that).val().toLowerCase();
                if(inputText != '')
                {
                    $('.search-query-sf').remove();
                    tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                        + $(that).val()
                        + '"</strong></td></tr>');
                }
                else
                {
                    $('.search-query-sf').remove();
                }

                if( rowText.indexOf( inputText ) == -1 )
                {
                    //hide rows
                    tableRowsClass.eq(i).hide();

                }
                else
                {
                    $('.search-sf').remove();
                    tableRowsClass.eq(i).show();
                }
            });
            //all tr elements are hidden
            if(tableRowsClass.children(':visible').length == 0)
            {
                tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
            }
        });
    });
    </script>
</head>
<body>
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
									<h3>Create Group Session </h3>
									<input type="text" placeholder="Enter Session Title" name="title" id="title" required=""></br></br>
									<input type="date" placeholder="Enter Date" name="date" id="date" required="">
									<input type="time" placeholder="Enter Time" name="time" id="time" required="">
									<input type="text" placeholder="Session Fee" name="fee" id="fee" required="">
									<input type="hidden" name="status" value="1">
									<input type="hidden" name="max_participant" value="1">
									<input type="submit" value="CREATE GROUP SESSION" >
								</form>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="wrapper">
    <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-6.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <class="simple-text">
                  <?php
                    echo "<h6>Welcome, $_SESSION[username]</h6>";
                  ?>
                </class>
            </div>
						<?php include '../system/check_user.php'; ?>
						<?php
							$Check=$_SESSION["User_type"];
							if ($Check>=0){
								# code...
								if ($Check==2) {
									# code...
									?>
									<ul class="nav">
										<li>
												<a href="../public/history.php">
														<i class="pe-7s-user"></i>
														<p>Session History</p>
												</a>
										</li>
										<li class="active-pro">
												<a href="../system/logout.php">
														<i class="pe-7s-power"></i>
														<p>Log Out</p>
												</a>
										</li>
									</ul>
									<?php
								}

								if ($Check==1) {
									# code...
									?>
									<ul class="nav">
										<li>
												<a href="../public/create_training.php">
														<i class="pe-7s-note2"></i>
														<p>Create Session</p>
												</a>
										</li>
										<li>
													<a href="../public/history.php">
															<i class="pe-7s-note2"></i>
															<p>Session History</p>
													</a>
											</li>
										<li>
												<a href="../public/profile.php?This=<?php echo $_SESSION["User_type"]; ?>">
														<i class="pe-7s-user"></i>
														<p>User Profile</p>
												</a>
										</li>
										<li class="active-pro">
												<a href="../system/logout.php">
														<i class="pe-7s-power"></i>
														<p>Log Out</p>
												</a>
										</li>
									</ul>
									<?php
								}
							}
						?>
    	</div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="dash.php"><b>HELP</b>Fit</a>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
				<?php include '../system/getprofile.php'; ?>
				
				<?php if ($_SESSION["User_type"]==2): ?>
				<?php include '../public/formrev.php'; ?>
				<?php endif ?>
			</div>
		</div>
	</div>
<footer class="footer">
<div class="container-fluid">
<nav class="pull-left">
<ul>
<li>
</li>
</nav>
<p class="copyright pull-right">
&copy; 2016 HELPFit
</p>
</div>
</footer>
</body>
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>
<script src="assets/js/chartist.min.js"></script>
<script src="assets/js/bootstrap-notify.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="assets/js/light-bootstrap-dashboard.js"></script>
</html>
