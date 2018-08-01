<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
	<title>HELP Fit</title>
</head>
<body>
	<center>
		<H1>Index</H1>
		<h2><a href="../index.php">index</a></h2>
		<br>
		<?php include '../system/check_user.php'; ?>
	</center>
	<br>
	<center>
	<form method="POST" action="../system/register_levelprg.php">
		<table>
			<tr>
				<td>
					Level
				</td>
				<td><input type="number" name="level" id="level" min="1" max="5"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="submit" id="submit" name="submit">Register</button>
				</td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>