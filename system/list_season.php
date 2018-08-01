<?php
  include '../conf/conn.php';
  ?>

  <table border="2">
    <tr>
      <th>
        ID
      </th>
      <th>
        Seassion name
      </th>
      <th>
        #
      </th>
    </tr>
    <?php
      $query = "SELECT * FROM training_session WHERE status=0";
      $result = mysqli_query($con,$query);

      if (!$result) {
        printf("Error: %s\n", mysqli_error($con));
        exit();
      }

      while($row = mysqli_fetch_array($result)) {
        // code...
        ?>
        <td>
          <?php echo $row["training_session_id"]; ?>
        </td>
        <td>
          <?php echo $row["title"]; ?>
        </td>
        <td>
          <button type="button" name="button">More Info</button>
        </td>
        <?php
      }
    ?>
  </table>
  <?php
?>
