<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Update</title>
</head>
<body>
<body>
	<div>
		<c:choose>
			<c:when test="${isUpdated}">
		Your Player information has been updated!
	</c:when>
			<c:otherwise>
		Error updating Player information!
	</c:otherwise>
		</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

</body>
</html>