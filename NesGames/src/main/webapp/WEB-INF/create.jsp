<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NES Database - Add a Game</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1>Add a game to the database!</h1>
		</div>
<div id="container-fluid">
<h3>Game Details</h3>

<form:form action="saveGame" modelAttribute="game" method = "POST">
	<table>
	<tbody>
	
	<tr>
	<td><label>Name: </label></td>
	<td><form:input path="name"/></td>
	</tr>
	
	<tr>
	<td><label>Year Published: </label></td>
	<td><form:input path="year"/></td>
	</tr>
	
	<tr>
	<td><label>Publisher: </label></td>
	<td><form:input path="publisher"/></td>
	</tr>
	
	<tr>
	<td><label>Style: </label></td>
	<td><form:input path="style"/></td>
	</tr>
	
	<tr>
	<td><label>Single or Multiplayer: </label></td>
	<td><form:input path="numberPlayers"/></td>
	</tr>
	
	<tr>
	<td><label>Wikipedia Link: </label></td>
	<td><form:input path="wikipedia"/></td>
	</tr>
	
	<tr>
	<td><label> </label></td>
	<td><input type="submit" value="Add Game"/></td>
	</tr>
	
	
	
	</tbody>
	</table>

</form:form>
<div style="clear; both;"></div>

<p>
<a href="home.do">Home</a>

</p>
</div>

	</div>


</body>
</html>