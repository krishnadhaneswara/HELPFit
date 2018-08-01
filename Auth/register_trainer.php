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
	<form method="POST" action="../system/register_specialityprg.php">
		<table>
			<tr>
				<td>
					Speciality
				</td>
				<td><input type="text" name="speciality" id="speciality"></td>
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