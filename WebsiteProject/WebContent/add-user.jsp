<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add User</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include>

	<br>
	<%-- TO-DO: CREATE A FORM FOR ADDING USER --%>
	<form action="insert" method="post">
		<h3 class="text-center">ADD USER</h3>
		<fieldset class="form-group">
			<label>Name:</label> <input type="text" class="form-control"
				required="required" name="fullname"> <br> <br> <label>Email:</label>
			<input type="text" class="form-control" required="required"
				name="email"> <br> <br> <label>Password:</label> <input
				type="text" class="form-control" required="required" name="password">
			<br> <br>
		</fieldset>
		<button type="submit" class=" btn btn-success">ADD</button>

	</form>

</body>
</html>
