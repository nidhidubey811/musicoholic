<?php
include("includes/includedFiles.php");
?>

<h1 class="pageHeadingBig">You Might Also Like</h1>

<div class="gridViewContainer">

	<?php
	$albumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND()");

	while ($row = mysqli_fetch_array($albumQuery)) {




		echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")'>
						<img src='" . $row['artworkPath'] . "'>

						<div class='gridViewInfo'>"
			. $row['title'] .
			"</div>
					</span>

				</div>";
	}
	?>

	<svg id="svgfilters" aria-hidden="true" style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
		<defs>
			<filter id="spring-grass" x="-10%" y="-10%" width="120%" height="120%" filterUnits="objectBoundingBox" primitiveUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
				<feColorMatrix type="matrix" values=".33 .33 .33 0 0
          .33 .33 .33 0 0
          .33 .33 .33 0 0
          0 0 0 1 0" in="SourceGraphic" result="colormatrix" />
				<feComponentTransfer in="colormatrix" result="componentTransfer">
					<feFuncR type="table" tableValues="0 0.38 0.92" />
					<feFuncG type="table" tableValues="0.5 0.8 1" />
					<feFuncB type="table" tableValues="0.5 0.56 0.74" />
					<feFuncA type="table" tableValues="0 1" />
				</feComponentTransfer>
				<feBlend mode="normal" in="componentTransfer" in2="SourceGraphic" result="blend" />
			</filter>
		</defs>
	</svg>

</div>