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

	<form action="add.do" method="POST">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" required class="GamePlayer" /></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="text" name="gender" required
					class="GamePlayer" /></td>
			</tr>
			<tr>
				<td>Origin</td>
				<td><input type="text" name="origin" required
					class="GamePlayer" /></td>
			</tr>
			<tr>
				<td>Fight Style</td>
				<td><input type="text" name="fightStyle" required
					class="GamePlayer" /></td>
			</tr>
			<tr>
				<td>Special Move</td>
				<td><input type="text" name="specialMove" required
					class="GamePlayer" /></td>





			</tr>

		</table>
		<button type="submit" class="GamePlayer">Add Player</button>
	</form>
	<br>
	<a href="home.do">Back to Home</a>

</body>
</html>