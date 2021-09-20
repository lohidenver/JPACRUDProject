<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<button>${game.name}on Wikipedia</button>
		</a>//working

<table>
		<c:url var="updateLink" value="updateGame">
			<c:param name="gameId" value="${game.id }" />
		</c:url>

		<c:url var="deleteLink" value="delete">
			<c:param name="gameId" value="${game.id }" />
		</c:url>

		<tr>
	
		
			<td><a href="${updateLink }"
				onclick="if (!(confirm('Are you sure you want to update this game? '))) return false"><button>Update</button></a>

				<a href="${deleteLink }"
				onclick="if (!(confirm('Are you sure you want to delete this game? '))) return false"><button
						style="background-color: red; border-color: black; color: white">Delete</button></a>
			</td>
		</tr>
</table>
		


	</div>
<hr>
	<div style=""></div>

	<p>
		<a href="home.do"><button>Home</button></a>

	</p>
	</div>
</body>
</html>