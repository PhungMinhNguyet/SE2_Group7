<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
.row{
margin-bottom: 33rem;
}

</style>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  
</head>
<body>


	<div class="row" id="tab">
	<jsp:include page="nav_bar_ad.jsp"></jsp:include><br>
	<div class="container">
		<div id="header">
				<h1 class="text-center" style="font-size: 1.5rem;">
					<img id="ava" 
						src="https://png.pngtree.com/png-clipart/20190516/original/pngtree-user-person-icon-png-image_3568573.jpg"
						style="width: 130px ; margin-right: 1rem; margin-top: 1rem;">USERS LIST
				</h1>
			</div>

			<table class="table table-bordered" >
				<thead>
					<tr>
						<th>ID</th>
						<th>Full Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Options</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.fullname}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.password}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include><br>
</body>
</html>

