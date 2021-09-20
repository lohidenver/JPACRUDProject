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
		</a>//working

	<c:url var="updateLink" value="/updateGame">
				<c:param name="gameId" value="${g.id }"/>
				</c:url>
				
				<c:url var="deleteLink" value="/destroy">
				<c:param name="gameId" value="${g.id }"/>
				</c:url>
		
		
<!--Update  -->
<input class="" style="width: 150px" type="button" name="gameId" value="Update Game" 
			onclick="window.location.href='updateGame'; return false;" 
			 /> //not working

		<!-- Change this out!!!! -->
		
		
		<hr>
		<a href="/destroy">
			<button style="background-color:red; border-color:black; color:white" >Delete ${game.name}</button>
		</a> //not working


	</div>

<div style="clear; both;"></div>

<p>
<a href="home.do">Home</a>

</p>
</div>
</body>
</html>