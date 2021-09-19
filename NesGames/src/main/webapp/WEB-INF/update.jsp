<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
	<div>
		
		<form action="update.do" method="POST"  >
			<h2>Game Information</h2>
		<br>
		<h5>Game: ${game.id} 
			<br>
			Game Title: <input type="text" value="${game.name}" > 
			<br>
			Year release: <input type="text" value="${game.year}" > 
			<br>
			Publisher: <input type="text" value="${game.publisher}" >
			<br>
			Date of Birth: <input type="text" value="${game.style}" > 
			<br>
			Number of Players: <input type="text" value="${game.numberPlayers}" > 
			<br>
			Wikipedia: <input type="text" value="${game.wikipedia}" > 
			<br>
			></h5>		
			
			<input type="hidden" name="game" value="${game}">
			<input class="btn btn-warning" type="submit" value="Submit Changes" />
			
		</form>
		
		<form action="home.do" method="GET">
			<input type="hidden" name="home" />
				<input class="btn btn-primary" type="submit" value="HOME" />
		</form>
		
	</div>
</body>
</html>