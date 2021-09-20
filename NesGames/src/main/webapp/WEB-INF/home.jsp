<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css"></link>
<title>Nes Database</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
</head>
<body>

	<div id="wrapper">
		<div id="header"></div>
		<h1>
		<center>Welcome to your NES Database</center>
	</h1>
	</div>

	
	<div class="container-fluid">
	
	<div id="content">
		<form action="getGame.do" method="GET">
			Game ID: <input type="text" name="gid" /> <input
				style="width: 150px;" type="submit" value="Show Game" />
		</form>

		<hr>
		<!-- put new button: Add Student  -->
		<input type="button" value="Add Game" onclick="create.do" class=""
			style="width: 150px" />



		<button
			style="width: 150px; background-color: red; border-color: black; color: white">Delete
			${game.name}</button>

		<hr>


		<Table class="table" thead-dark table-striped table-hover>
		
			
				<tr>
					<th>Id</th>
					<th>Title</th>
				</tr>
			
			<c:forEach var="g" items="${games}">
				<tr>
					<td>${g.id}</td>
					<td><a href="getGame.do?gid=${g.id}"> ${g.name} </a></td>
				</tr>
				
			</c:forEach>

		</Table>
		</div>
	</div>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>