<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit User</title>
<style>

form{
margin-bottom: 10rem ;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
		<jsp:include page="nav_bar_ad.jsp"></jsp:include><br>

	<br>

	<%-- TO-DO: CREATE A FORM FOR UPDATING USER --%>
	<form action="update" method="post">
		<h3 class="text-center">Update User</h3>
		<fieldset class="form-group">
			<label></label> <input  type="hidden" type="text" class="form-control"
				name="id" value="<c:out value="${user.id}" />"> <br>
			<label>Name:</label> <input type="text" class="form-control"
				name="fullname" value="<c:out value="${user.fullname}" />"> <br>
			<br> <label>Email:</label> <input type="text"
				class="form-control" name="email"
				value="<c:out value="${user.email}" />"> <br> <br>
			<label>Password:</label> <input type="text" class="form-control"
				name="password" value="<c:out value="${user.password}" />"> <br>
			<br>
			<button type="submit" class=" btn btn-success" value="SAVE">
				Update</button>
		</fieldset>
	</form>
	<jsp:include page="footer.jsp"></jsp:include><br>
</body>
</html>
