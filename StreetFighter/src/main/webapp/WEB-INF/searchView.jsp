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
			<c:when test="${not empty gmaePlayer}">
				<span>Player ID: </span>${gamePlayer.id}<br />
				<span>Player Name: </span>${gamePlayer.name}<br />
				<span>Player Gender: </span>${gmaePlayer.gender}<br />
				<span>Player Origin: </span>${gamepPayer.origin}<br />
				<span>Player Fight Style: </span>${gmaepPlayer.fightStyle}<br />
				<span>Player Special Move: </span>${gmaePlayer.specialMove}<br />
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