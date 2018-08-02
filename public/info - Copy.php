<?php
if (isset($_GET['This'])) {
  // code...
  session_start();
  ?>
  <!DOCTYPE html>
  <html lang="en" dir="ltr">
    <head>
      <meta charset="utf-8">
      <title>HELP Fit</title>
    </head>
    <body>
      <center>
    		<h1>Welcome! <?php echo $_SESSION["username"]; ?></h1>
    		<h2><a href="../system/logout.php">logout</a></h2>
    		<br>
    		<?php include '../system/check_user.php'; ?>
    	</center>
      <center>
        <table>
          <?php include '../system/getInfo.php'; ?>
          <?php 
            if (isset($_SESSION["Member_id"])) {
              # code...
              echo "<a href='../public/join.php?This=".$_GET['This']."'>Join</a>";
            }
          ?>
          <tr></tr>  
        </table>
      </center>
    </body>
  </html>
  <?php
} else {
  // code...
  header("Location: ../public/dash.php");
}
 ?>
