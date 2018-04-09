<?php
	//ini_set('display_errors', 1);
	//error_reporting(E_ALL);

	require_once('phpscripts/config.php');
	$tblG = "tbl_genre";
	$genQuery = getAll($tblG);
	$genQuery2 = getAll($tblG);
	$genQuery3 = getAll($tblG);

	$tblA = "tbl_age";
	$ageQuery = getAll($tblA);
	if(isset($_POST['submit'])) {
		$title = $_POST['title'];
		$cover = $_FILES['cover'];
		$year = $_POST['year'];
		$story = $_POST['story'];
		$trailer = $_POST['trailer'];
		$genre = array($_POST['genList'], $_POST['genList2'], $_POST['genList3']);
		$age = $_POST['ageList'];
		$uploadMovie = addMovie($title, $cover, $year, $story, $trailer, $genre, $age);
		$message = $uploadMovie;
		echo $message;
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<a href="admin_index.php">Back</a>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label>Movie Title:</label>
		<input type="text" required name="title" value=" <?php if(!empty($title)){ echo $title;} ?>"><br><br>
		<label>Movie Cover Image:</label>
		<input type="file" name="cover"><br><br>
		<label>Movie Year:</label>
		<input type="text" required name="year" value=" <?php if(!empty($year)){ echo $year;} ?>"><br><br>
		<label>Movie Storyline</label>
		<textarea type="text" cols="30" rows="8" required name="story" value=" <?php if(!empty($story)){ echo $story;} ?>"></textarea><br><br>
		<label>Movie Trailer:</label>
		<input type="text" name="trailer"><br><br>
		<select name="ageList" required>
			<option value="">Please select an age rating</option>
			<?php while($row = mysqli_fetch_array($ageQuery)) {
				echo "<option value=\"{$row['age_id']}\">{$row['age_name']}</option>";
			} ?>
		</select><br><br>
		<select name="genList" required>
			<option value="">Please select a genre</option>
			<?php while($row = mysqli_fetch_array($genQuery)) {
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			} ?>
		</select><br><br>
		<select name="genList2">
			<option value="">Select an additional genre</option>
			<?php while($rows = mysqli_fetch_array($genQuery2)) {
				echo "<option value=\"{$rows['genre_id']}\">{$rows['genre_name']}</option>";
			} ?>
		</select><br><br>
		<select name="genList3">
			<option value="">Select an additional genre</option>
			<?php while($rows2 = mysqli_fetch_array($genQuery3)) {
				echo "<option value=\"{$rows2['genre_id']}\">{$rows2['genre_name']}</option>";
			} ?>
		</select><br><br>
		<input type="submit" name="submit" value="Add Movie">
	</form>
</body>
</html>