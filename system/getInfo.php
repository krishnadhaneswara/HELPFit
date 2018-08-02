<?php 
	include '../conf/conn.php';

	$training_session_id=$_GET["This"];
  
	$query = "SELECT * FROM training_session WHERE training_session_id=$training_session_id";
  $result = mysqli_query($con,$query);
  if (!$result) {
      printf("Error: %s\n", mysqli_error($con));
      exit();
  }    
?>
	<?php while($row = mysqli_fetch_array($result)) {
        // code...
        $This=$row["trainer_id"];
        $query2 = "SELECT trainer.trainer_id, user.fullname, user.email FROM trainer 
        INNER JOIN user ON user.user_id=trainer.user_id WHERE trainer_id=$This";
	    $result2 = mysqli_query($con,$query2);
	    if (!$result2) {
	        printf("Error: %s\n", mysqli_error($con));
	        exit();
	    }
        ?>
        <tr>
          <td>
            <?php echo $row["training_session_id"]; ?>
          </td>
          <td>
            <?php echo $row["title"]; ?>
          </td>
          <td>
            <?php 
            while ( $row2 = mysqli_fetch_array($result2)) {
            	# code...
            	echo $row2["fullname"];
            }?>
          </td>
        <?php
      }
    ?>