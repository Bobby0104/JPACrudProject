<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Players</title>
</head>
<body>

	<div>
		<table id="table-div">
			<tr>

				<th>ID</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Origin</th>
				<th>Fight Style</th>
				<th>Special Move</th>

			</tr>
			<c:forEach var="gamePlayer" items="${}">
				<tr>
					<td>${gamePlayer.id}</td>
					<td>${gamePlayer.name}</td>
					<td>${gamePlayer.gender}</td>
					<td>${gamePlayer.origin}</td>
					<td>${gamePlayer.fightStyle}</td>
					<td>${gamePlayer.specialMove}</td>
				</tr>

			</c:forEach>
		</table>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

</body>
</html>