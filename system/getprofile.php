<?php
include '../conf/conn.php';
$This=$_GET["This"];
$query = "SELECT trainer.trainer_id, user.fullname, user.email FROM trainer 
INNER JOIN user ON user.user_id=trainer.user_id WHERE trainer_id=$This";
$result = mysqli_query($con,$query); 
?>
	<div class="col-md-12">
        <div class="card">
            <div class="content table-responsive table-full-width">
                <table class="table table-hover table-striped table-list-search">
                    <thead>
                      <th>Full name</th>
                      <th>email</th>
                      <th>rating</th>
                    </thead>

					<?php while($row = mysqli_fetch_array($result)) {?>
						<tr>
							<td><?php echo $row["fullname"] ?></td>
							<td><?php echo $row["email"] ?></td>
						<?php 
						$query2 = "SELECT * 
						FROM review 
						WHERE trainer_id=$This";
						$result2 = mysqli_query($con,$query2);
						$count = mysqli_num_rows($result2);

						$stars=0;
						while ($row2 = mysqli_fetch_array($result2)) {
							# code...
							$stars = $stars + $row2["rating"];
						}  
					 	?>
							<td><?php if ($stars!=0) {
								# code...
								printf("%1\$.2f",$stars/$count);
								}else{
									echo "0";
								} ?>		
							</td>
						</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-12">
        <div class="card">
            <div class="content table-responsive table-full-width">
                <table class="table table-hover table-striped table-list-search">
                    <thead>
                      <th>comments</th>
                      <th>rating</th>
                    </thead>

					<?php 
					$query2 = "SELECT * 
					FROM review
					INNER JOIN member ON member.member_id=review.member_id
					INNER JOIN user ON user.user_id=member.user_id 
					WHERE trainer_id=$This";
					$result2 = mysqli_query($con,$query2); ?>
					<?php while ($row2 = mysqli_fetch_array($result2)) {
						# code...  
				 	?>
				 	<tr>
				 		<td><?php echo $row2["fullname"]; ?></td>
				 		<td><?php echo $row2["comments"]; ?></td>
				 		<td><?php echo $row2["rating"]; ?></td>
				 	</tr>
				 	<?php } ?>
				</table>
			</div>
		</div>
	</div>
	
<?php } ?>
