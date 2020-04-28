<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include>

	<br>
	<%-- TO-DO: CREATE A FORM FOR ADDING USER --%>
	<form action="add" method="post">
		<h3 class="text-center">ADD NEWS</h3>
		<fieldset class="form-group">
			<label>Title:</label> 
			<input type="text" class="form-control"
				required="required" name="title"> <br> <br>
			 <label>Content:</label>
			<input type="text" class="form-control" required="required"
				name="content"> <br> <br> <label>
		</fieldset>
		<button type="submit" class=" btn btn-success">ADD</button>

	</form>

</body>
</html>
