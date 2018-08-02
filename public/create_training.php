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

		<center>
			<?php if (isset($_GET["create"])): ?>
				<form class="" action="../system/create_trainingprg.php" method="post">
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
							<input type="hidden" name="status" value="2">
							<td>max participant</td>
							<td>:</td>
							<td><input type="number" name="max_participant" id="max_participant"></td>
						<?php endif; ?>
						<?php if ($_GET["create"]=="Personal"): ?>
							<input type="hidden" name="status" value="1">
							<input type="hidden" name="max_participant" value="1">
						<?php endif; ?>
					</table>
					<input type="submit" name="submit" value="submit">
				</form>
			<?php endif; ?>
		</center>
	</body>
</html>
