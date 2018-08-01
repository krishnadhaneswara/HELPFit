<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<center>
			<h1>Welcome! <?php echo $_SESSION["username"]; ?></h1>
			<h2><a href="../system/logout.php">logout</a></h2>
			<br>
			<?php include '../system/check_user.php'; ?>
		</center>
		<center>
		<?php if (!isset($_GET['create'])){ ?>
			<a href="create_training.php?create=Group">Create Group  |  </a>
			<a href="create_training.php?create=Personal">Create Personal</a>
		<?php } ?>
		</center>
		<?php if (!isset($_GET["create"])): ?>
			<center>
				<a href="create_training.php?create=Group"></a>
				<a href="create_training.php?create=Personal"></a>
			</center>
		<?php endif; ?>

		<center>

			<?php if (isset($_GET["create"])): ?>
				<form class="" action="index.html" method="post">
					<table>
						<tr>
							<td>title</td>
							<td>:</td>
							<td><input type="text" name="title" id="title"></td>
						</tr>
						<tr>
							<td>date</td>
							<td>:</td>
							<td><input type="date" name="date" id="date"></td>
						</tr>
						<tr>
							<td>time</td>
							<td>:</td>
							<td><input type="time" name="time" id="time"></td>
						</tr>
						<tr>
							<td>fee</td>
							<td>:</td>
							<td><input type="number" name="fee" id="fee"></td>
						</tr>
						<?php if ($_GET["create"]=="Group"): ?>
							<tr>
								<td>status</td>
								<td>:</td>
							</tr>
						<?php endif; ?>
						<?php if ($_GET["create"]=="Personal"): ?>
							<tr>
								<td>status</td>
								<td>:</td>
							</tr>
						<?php endif; ?>
					</table>
				</form>
			<?php endif; ?>
		</center>
	</body>
</html>
