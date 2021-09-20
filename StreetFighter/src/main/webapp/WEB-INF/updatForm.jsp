<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Update Player Information</title>
</head>
<body>
	<h2>Please enter information to update:</h2>
	<div>
		<c:choose>
			<c:when test="${empty fighters}">
		No such Player!
	</c:when>
			<c:otherwise>
				<form action="get.do" method="get">
					<label>gamePlayerr ID: <input type="text" name="id"
						value="${gamePlayer.id}" /></label><br /> <label>gamePlayer
						Name: <input type="text" name="name" value="${gamePlayer.name}" />
					</label><br /> <label>gamePlayer Gender: <input type="text"
						name="gender" value="${gamePlayer.gender}" /></label><br /> <label>gamePlayer
						Origin: <input type="text" name="origin"
						value="${gamePlayer.origin}" />
					</label><br /> <label>gamePlayer fightStyle: <input type="text"
						name="ightStyle" value="${gamePlayer.fightStyle}" /></label><br /> <label>gamePlayer
						specialMove: <input type="text" name="specialMove"
						value="${gamePlayer.specialMove}" />
					</label><br /> <input type="submit" value="Update your Player" />
				</form>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>