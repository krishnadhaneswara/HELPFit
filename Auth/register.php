<!DOCTYPE html>
<html>
<head>
	<title>HELP Fit</title>
</head>
<body>
	<center>
		<H1>Index</H1>
		<h2><a href="../index.php">index	</a>|	<a href="login.php">login</a></h2>
		<br>
	</center>
	<center>
	<form method="post" action="../system/registerprg.php">
		<table>
			<tr>
				<td>
					Username
				</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>
			
			<tr>
				<td>
					Password
				</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>

			<tr>
				<td>
					Full name
				</td>
				<td><input type="text" name="fullname" id="fullname"></td>
			</tr>


			<tr>
				<td>
					E-mail
				</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>

			<tr>
				<td colspan="2"><button type="submit" id="submit" name="submit">Register</button></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>