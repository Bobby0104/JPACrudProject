<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<c:choose>
			<c:when test="${not empty monster}">
				<span>Player ID: </span>${player.id}<br />
				<span>Player Name: </span>${player.name}<br />
				<span>Player Gender: </span>${player.gender}<br />
				<span>Player Origin: </span>${player.origin}<br />
				<span>Player Fight Style: </span>${player.fightStyle}<br />
				<span>Player Special Move: </span>${player.specialMove}<br />
				<span>Player : </span>
				<br />



			</c:when>
			<c:otherwise>
		No Player Found!
	</c:otherwise>
		</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>





</body>
</html>