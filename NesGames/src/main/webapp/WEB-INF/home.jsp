<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="css/main.css"></link> -->
<title>NES Database</title>
<jsp:include page="bootstrapHead.jsp"></jsp:include>
 <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
          
        th, td {
            text-align: left;
            padding: 8px;
        }
          
        tr:nth-child(odd) {
            background-color: Lightgrey;
        }
    </style>
</head>
<body>

	<div id="wrapper" style="background-color:powderblue;">
		<div id="header"></div>
		<h1>
			<center>Welcome to your NES Database</center>
		</h1>
	</div>


	<div class="container">

		<div id="content">
			<form action="getGame.do" method="GET">
				Game ID: <input type="text" name="gid" /> <input
					style="width: 150px;" type="submit" value="Show Game" />
			</form>

			<hr>
			<input class="" style="width: 150px" type="button" value="Add Game" 
			onclick="window.location.href='createGame'; return false;"
			 />
			
			<!--  <input class="" style="width: 150px" type="button" value="Update Game" 
			onclick="window.location.href='updateForm'; return false;"
			 />
			  -->


			

			<hr>


			<Table class="table" thead-dark table-striped table-hover>


				<tr>
					<th>Id</th>
					<th>Title</th>
					<th>Action</th>
				</tr>

				<c:forEach var="g" items="${games}">
				
				
				
				<c:url var="updateLink" value="createGame">
				<c:param name="gameId" value="${g.id }"/>
				</c:url>
				
				<c:url var="deleteLink" value="delete">
				<c:param name="gameId" value="${g.id }"/>
				</c:url>
				
					<tr>
						<td>${g.id}</td>
						<td><a href="getGame.do?gid=${g.id}"> ${g.name} </a></td>
						<td>
						<a href="${updateLink }"onclick=
							"if (!(confirm('Are you sure you want to update this game? '))) return false"><button>Update</button></a>
						
						<a href="${deleteLink }" onclick=
							"if (!(confirm('Are you sure you want to delete this game? '))) return false"><button style="background-color:red; border-color:black; color:white" >Delete</button></a>
						</td>
					</tr>

				</c:forEach>

			</Table>
		</div>
	</div>
	<jsp:include page="bootstrapFoot.jsp"></jsp:include>
</body>
</html>