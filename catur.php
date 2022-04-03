<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>papan catur</title>
</head>
<body>
	<table border="10" cellpadding="25" cellspacing="0" align="center">
		<div align="center"><h1>papan catur</h1></div>
		<?php for( $baris = 1; $baris <= 8; $baris++ ) : ?>
			<tr>
				<?php for($kolom = 1; $kolom <= 5; $kolom++ ) : ?>
					<?php if( ($baris + $kolom) % 2 == 1) { ?>
							<td bgcolor="white">*</td>
						<?php } else if( ($baris + $kolom) % 2 == 0 ) { ?>
							<td bgcolor="white">-</td>
					<?php } ?>
				<?php endfor; ?>
			</tr>
		<?php endfor; ?>
	</table>
</body>
</ht