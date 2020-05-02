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
	<form action="updateNews" method="post">
		<h3 class="text-center">Update News</h3>
		<fieldset class="form-group">
			<label></label> <input  type="hidden" type="text" class="form-control"
				name="id" value="<c:out value="${exist_new.id}" />"> <br>
			<label>Title</label> <input type="text" class="form-control"
				name="title" value="<c:out value="${exist_new.title}" />"> <br>
			<br> <label>Content:</label> <input type="text"
				class="form-control" name="content"
				value="<c:out value="${exist_new.content}" />"> <br> <br>
				<button type="submit" class=" btn btn-success" value="SAVE">
				Update</button>
		</fieldset>
	</form>
	<jsp:include page="footer.jsp"></jsp:include><br>
</body>
</html>
