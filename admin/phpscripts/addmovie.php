<?php
	function addMovie($title, $cover, $year, $story, $trailer, $genre, $age) {
		include('connect.php');
		if($_FILES['cover']['type'] == "image/jpeg" || $_FILES['cover']['type'] == "image/jpg"){
			$target = "../images/{$cover['name']}";
			if(move_uploaded_file($_FILES['cover']['tmp_name'], $target)) {
				$orig = $target;
				$th_copy = "../images/TH_{$cover['name']}";
				if(!copy($orig, $th_copy)){
					return "Failed to copy";
				}
				//$size = getimagesize($orig);
				/*if($_FILES['trailer']['type'] == "video/mp4"){
					$target2 = "../videos/{$trailer['name']}";
				if(move_uploaded_file($_FILES['trailer']['tmp_name'], $target2)) {*/
				$addString = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}', '{$title}', '{$year}', '{$story}', '{$trailer}')";
				$addQuery = mysqli_query($link, $addString);
				if($addQuery) {
					$qstring = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
					$lastmovie = mysqli_query($link, $qstring);
					$row = mysqli_fetch_array($lastmovie);
					$lastID = $row['movies_id'];
					$ageString = "INSERT INTO tbl_mov_age VALUES(NULL, {$lastID}, {$age})";
					$ageResult = mysqli_query($link, $ageString);
					foreach ($genre as $value) {
						if (!empty($value)) {
							$value;
							$genreString = "INSERT INTO tbl_mov_gen VALUES(NULL, {$lastID}, {$value})";
							$genreResult = mysqli_query($link, $genreString);
						}
					}
							
					if($genreResult && $ageResult) {
						redirect_to("admin_index.php");
						return "test";
					} else{
						$message = "Movie didn't input";
						return $message;
					}
				} else {
					$message = "Movie didn't input";
					return $message;
				}
				/*} else {
						return "movie failed";

					}*/
				mysqli_close($link);		
			}
		}else{
			return "Really, a GIF...";
		}
	}

	function deleteMovie($id) {
		//echo $id;
		include('connect.php');
		$delString = "DELETE FROM tbl_movies WHERE movies_id = '{$id}'";
		$delQuery = mysqli_query($link, $delString);
		if($delQuery) {
			$delGenString = "DELETE FROM tbl_mov_gen WHERE movies_id = '{$id}'";
			$delQuery2 = mysqli_query($link, $delGenString);
			if($delQuery2) {
				$delAgeString = "DELETE FROM tbl_mov_age WHERE movies_id = '{$id}'";
				$delQuery3 = mysqli_query($link, $delAgeString);
				if($delQuery3) {
					redirect_to("../admin_index.php");
				}else{
					$message = "F%*k, call security...";
					return $message;
				}
			}else{
				$message = "F%*k, call security...";
				return $message;
			}
		}else{
			$message = "F%*k, call security...";
			return $message;
		}
		mysqli_close($link);
	}
?>