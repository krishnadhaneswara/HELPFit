<?php
	$Check=$_SESSION["User_type"];
	if ($Check>=0){
		# code...
		if ($Check==2) {
			# code...
			?>
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
				<li class="active">
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
