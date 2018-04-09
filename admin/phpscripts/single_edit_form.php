<?php
	function single_edit($tbl, $col, $id) {
		$result = getSingle($tbl, $col, $id);
		$getResult = mysqli_fetch_array($result);
		//echo mysqli_num_fields($result);
		echo "<form action=\"phpscripts/editall.php\" method=\"post\">";
		echo "<input hidden name=\"tbl\" value=\"{$tbl}\">";
		echo "<input hidden name=\"col\" value=\"{$col}\">";
		echo "<input hidden name=\"id\" value=\"{$id}\">";
		for($i=0; $i<mysqli_num_fields($result); $i++) {
			$dataType = mysqli_fetch_field_direct($result, $i);
			$fieldName = $dataType -> name;
			//echo $fieldName."<br>";
			$fieldType = $dataType -> type;
			//echo $fieldType."<br>";
			//need to only show the type of the movies_
			if($fieldName != $col){
				echo "<label>{$fieldName}</label><br>";
				if($fieldType != "252"){
					echo "<input type=\"text\" name=\"{$fieldName}\" value=\"{$getResult[$i]}\"><br><br>";
				}else{
					echo "<textarea name=\"{$fieldName}\">{$getResult[$i]}</textarea><br><br>";
				}
			}
		}
		echo "<input type=\"submit\" name=\"submit\" value=\"Save Content\">";
		echo "</form>";
	}

	function single_edit_genre($tbl, $tbl2, $tbl3, $col, $col2, $id) {
		$linkedresult = filterType($tbl, $tbl2, $tbl3, $col, $col2, $col2, $id);
		$getResult2 = mysqli_fetch_array($linkedresult);
		//echo mysqli_num_fields($result);
		echo "<form action=\"phpscripts/editall.php\" method=\"post\">";
		echo "<input hidden name=\"tbl\" value=\"{$tbl}\">";
		echo "<input hidden name=\"tbl2\" value=\"{$tbl2}\">";
		echo "<input hidden name=\"tbl3\" value=\"{$tbl3}\">";
		echo "<input hidden name=\"col\" value=\"{$col}\">";
		echo "<input hidden name=\"col2\" value=\"{$col2}\">";
		echo "<input hidden name=\"id\" value=\"{$id}\">";
		for($i=0; $i<mysqli_num_fields($linkedresult); $i++) {
			$dataType2 = mysqli_fetch_field_direct($linkedresult, $i);
			$fieldName = $dataType2 -> name;
			//echo $fieldName."<br>";
			$fieldType = $dataType2 -> type;
			//echo $fieldType."<br>";
			//need to only show the type of the movies_
			if($fieldName != $col && $fieldName != $col2 && $fieldName != "mov_gen_id"){
				if($fieldName = "genre_name")
				echo "<label>{$fieldName}</label><br>";
				if($fieldType != "252"){
					echo "<input type=\"text\" name=\"{$fieldName}\" value=\"{$getResult2[$i]}\"><br><br>";
				}else{
					echo "<textarea name=\"{$fieldName}\">{$getResult2[$i]}</textarea><br><br>";
				}
			}
		}
		echo "<input type=\"submit\" name=\"submit\" value=\"Save Content\">";
		echo "</form>";
	}
?>