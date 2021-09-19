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
	<h1>
		<center>Welcome to your NES Database</center>
	</h1>
	<div class="container-fluid">
		<form action="getGame.do" method="GET">
			Game ID: <input type="text" name="gid" /> <input type="submit"
				value="Show Game" />
		</form>   ADD GAME    DELETE GAME

		<Table class="table" thead-dark table-striped table-hover>

			<thead>
				<tr>
					<th>Id</th>
					<th>Title</th>
				</tr>
			<tbody>
			</thead>

			<c:forEach var="g" items="${games}">
				<tr>
					<td>${g.id}</td>
					<td><a href="getGame.do?gid=${g.id}"> ${g.name} </a></td>
				</tr>
				</tbody>
			</c:forEach>

		</Table>
	</div>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>