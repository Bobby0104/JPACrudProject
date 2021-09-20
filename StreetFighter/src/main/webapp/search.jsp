<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Search</title>
</head>
<body>

	<h2>Please enter Player ID to search:</h2>
	<div>
		<form action="search.do" method="get">
			<label>Player ID: <input type="text" name="id" /></label><br /> <input
				type="submit" value="Search By Id" /><br />
		</form>
	</div>

</body>
</html>