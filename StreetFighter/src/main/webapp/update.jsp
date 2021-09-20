<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Player</title>
</head>
<body>

</head>
<body>
<h2>Please enter a Player ID to update:</h2>
<div>
<form action="get.do" method="get" >
	<label>Player ID: <input type="text" name="id" value="id" /></label><br/>
	<input type="submit" value="Update Player By ID" />
</form>
</div>

</body>
</html>