<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nintendo</title>
</head>
<body>
	<div>
		<h1>${game.name}</h1>
		<h4>Year released: ${game.year}</h4>
		<h4>Publisher: ${game.publisher}</h4>
		<h4>Style of Game: ${game.style}</h4>
		<h4>Single or Multiplayer: ${game.numberPlayers}</h4>

		<a href="${game.wikipedia}">
			<button>${game.name} on Wikipedia</button>
		</a><br>

		<hr>
		<br> <br>

<!--Update  -->

		<!-- Change this out!!!! -->
		
		
		<hr>
		<a href="">
			<button style="background-color:red; border-color:black; color:white" >Delete ${game.name}</button>
		</a>


	</div>

</body>
</html>