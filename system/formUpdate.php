<?php 
include '../conf/conn.php';
$This=$_GET["This"];
?>

	
    <div class="col-md-4">
        <form action="../system/Updateprg.php" method="POST">
            <div class="input-group">
            	<?php
	    			$query = "SELECT * FROM training_session WHERE training_session_id=$This";
	    			$result = mysqli_query($con,$query);

	    			while($row = mysqli_fetch_array($result)){ 
    			?>
                <input type="text" class="form-control" value="<?php echo $row["title"]; ?>" 
                	placeholder="Enter Session Title" name="title" id="title">
				<input type="date" class="form-control" value="<?php echo $row["the_date"]; ?>"
					placeholder="Enter Date" name="date" id="date" required="">
				<input type="time" class="form-control" value="<?php echo $row["the_time"]; ?>"
					placeholder="Enter Time" name="time" id="time" required="">
				<input type="text" class="form-control" value="<?php echo $row["fee"]; ?>"
					placeholder="Session Fee" name="fee" id="fee" required="">
				<br>
				<input type="hidden" name="This" id="This" value="<?php echo $This ?>">
			<?php } ?>
				<button type="submit" class="btn btn-default">Update</button>
            </div>
            <br />
        </form>
    </div>

	