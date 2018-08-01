<?php
  echo "string".isset($_GET['d']);
  if (isset($_GET['d'])) {
    // code...
    ?>
    <h1>this</h1>
    <?php
  }
  if (!isset($_GET['d'])) {
    // code...
    ?>
    <h1>that</h1>
    <?php
  }
?>
