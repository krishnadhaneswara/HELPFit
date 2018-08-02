<?php
  include '../conf/conn.php';
      $query = "SELECT * FROM training_session WHERE status!=0";
      $result = mysqli_query($con,$query);

      if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
      }

      while($row = mysqli_fetch_array($result)) {
        // code...
        echo "<tr>";
      	echo "<td>".$row['training_session_id']."</td>";
      	echo "<td>".$row['title']."</td>";
        echo "<td>";
        ?>
        <a href="../public/info.php?This=<?php echo $row['training_session_id']; ?>">More Info</a>
        <?php
        echo "</td>";
      	echo "</tr>";
      }
?>
