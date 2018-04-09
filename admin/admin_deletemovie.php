<?php
	//ini_set('display_errors', 1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();
	$tbl = "tbl_movies";
	$movies = getAll($tbl);
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Page</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<a href="admin_index.php">Back</a>
	<div id="dBox">
		<?php
			while($row = mysqli_fetch_array($movies)) {
				echo "<li><h3 class=\"movieTitle\">{$row['movies_title']}</h3> <a class=\"fire\" href=\"phpscripts/caller.php?movie_id=delete&id={$row['movies_id']}\">Delete Movie</a></li><br>";
			}
		?>
	</div>
</body>
</html>