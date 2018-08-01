<?php
	$Check=$_SESSION["User_type"];
	if ($Check>=0){
		# code...
		if ($Check==2) {
			# code...
			?>
				<H1>Menu</H1>
				<ul>
					<li>
						<a href="#"> Register for Training</a>
					</li>
					<li>
						<a href="#"> Training History</a>
					</li>
				</ul>
			<?php
		}

		if ($Check==1) {
			# code...
			?>
				<H1>Menu</H1>
				<ul>
					<li>
						<a href="../public/create_training.php"> Create new Training</a>
					</li>
					<li>
						<a href="#"> Training History</a>
					</li>
				</ul>
			<?php
		}
	}
?>
