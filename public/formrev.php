<?php 
include '../conf/conn.php';
$This=$_GET["This"];
?>

	<div class="col-md-12">
	    <div class="card">
	        <div class="content table-responsive table-full-width">
	        	<form method='post' action='../system/revprg.php'>

	            <table class="table table-hover table-striped table-list-search">
	                <thead>
	                    <th>Review form</th>
	                </thead>
					<tr>
						<td>Comments</td>
						<input type="hidden" name="This" value="<?php echo $This ?>">
						<td><input type="text" name="comments"></td>
					</tr>
					<tr>
						<td>Rate</td>
						<td><input type="number" name="rate" id="rate" min="1" max="5"></td>
					</tr>
					<tr>
						<td>
							<input type="submit" name="submit" value="Comments">
						</td>
					</tr>
				</table>
				</form>
	        </div>
	    </div>
	</div>