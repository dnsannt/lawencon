<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SORTING ARRAY</title>
</head>
<body>
<h1>Sorting</h1>	
<h3>
	<?php
$nilai = array(1, 3, 9, 2, 11, 4, 5);
sort($nilai);

$data = count($nilai);
for($x = 0; $x < $data; $x++) {
  echo $nilai[$x];
  echo "<tr> ";
}
?>
</h3>
</body>
</html>