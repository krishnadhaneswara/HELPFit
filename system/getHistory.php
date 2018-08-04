<?php
	include '../conf/conn.php';

  if ($_SESSION["User_type"]==1) {
    # code...
    $trainer_id=$_SESSION['Trainer_id'];
    $query = "SELECT * FROM training_session WHERE trainer_id=$trainer_id";
    $result = mysqli_query($con,$query);

    if (!$result) {
      printf("Error: %s\n", mysqli_error($con));
      exit();
    }
  }

  if ($_SESSION["User_type"]==2) {
    # code...
    $member_id=$_SESSION['Member_id'];
    $query = "SELECT * FROM personal_training WHERE member_id=$member_id";
    $resultP = mysqli_query($con,$query);

    if (!$resultP) {
      printf("Error: %s\n", mysqli_error($con));
      exit();
    }
    $query = "SELECT * FROM group_training WHERE member_id=$member_id";
    $resultG = mysqli_query($con,$query);
    if (!$resultG) {
      printf("Error: %s\n", mysqli_error($con));
      exit();
    }
  }

?>
	<?php
    if ($_SESSION["User_type"]==1) {
       # code...
      while($row = mysqli_fetch_array($result)) {
        // code...
        ?>
        <tr>
          <td>
            <?php echo $row["training_session_id"]; ?>
          </td>
          <td>
            <?php echo $row["title"]; ?>
          </td>
          <td>
            <?php echo $row["the_date"]; ?>
          </td>
          <td>
            <?php echo $row["the_time"]; ?>
          </td>
          <td>
            <?php echo $row["fee"]; ?>
          </td>
          <td>
            <a href="../public/Update.php?This=<?php echo $row['training_session_id']; ?>">
              Update
            </a>
          </td>
        <?php
      }
    }
    if ($_SESSION["User_type"]==2) {
       # code...
      while($row = mysqli_fetch_array($resultP)) {
        // code...
        $This=$row["training_session_id"];
        $query2 = "SELECT *
          FROM trainer
          INNER JOIN training_session ON training_session.trainer_id=trainer.trainer_id
          INNER JOIN user ON user.user_id=trainer.user_id
          WHERE training_session.training_session_id=$This";
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
					<?php while ( $row2 = mysqli_fetch_array($result2)) {
            ?>
					<td>
            <?php echo $row2["title"]; ?>
          </td>
          <td>
            <?php echo $row2["the_date"]; ?>
          </td>
          <td>
            <?php echo $row2["the_time"]; ?>
          </td>
          <td>
            <a href="../public/profile.php?This=<?php echo $row2['trainer_id']; ?>">
              <?php echo $row2["fullname"]; ?>
            </a>
          </td>
					<?php } ?>
          <td>
            <?php echo $row["notes"]; ?>
          </td>
          <td>
            <?php while ( $row2 = mysqli_fetch_array($result2)) {
            ?>
            <?php } ?>
          </td>
        <?php
      }

      while($row = mysqli_fetch_array($resultG)) {
        // code...
        $This=$row["training_session_id"];
        $query2 = "SELECT *
          FROM  trainer
          INNER JOIN training_session ON trainer.trainer_id = training_session.trainer_id
          INNER JOIN user ON user.user_id = trainer.user_id
          WHERE training_session.training_session_id = $This";
        $result2 = mysqli_query($con,$query2);

        if (!$result2) {
          printf("Error: 1 %s\n", mysqli_error($con));
          exit();
        }
        ?>
        <tr>
          <td>
            <?php echo $row["training_session_id"]; ?>
          </td>
					<?php while ( $row2 = mysqli_fetch_array($result2)) {
            ?>
					<td>
            <?php echo $row2["title"]; ?>
          </td>
          <td>
            <?php echo $row2["the_date"]; ?>
          </td>
          <td>
            <?php echo $row2["the_time"]; ?>
          </td>
				<?php } ?>
					<td>
            <?php echo $row["class_type"]; ?>
          </td>
          <td>
            <?php while ( $row2 = mysqli_fetch_array($result2)) {
            ?>
            <a href="../public/profile.php?This=<?php echo $row['training_session_id']; ?>">
              <?php echo $row2["fullname"]; ?>
            </a>
          <?php } ?>
          </td>
        <?php
      }
    }
    ?>
