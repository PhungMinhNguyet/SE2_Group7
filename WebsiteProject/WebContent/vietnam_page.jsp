<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
#tableHeader{
font-size: 14px;
}
#tableBody{
font-size: 14px;
}
</style>
<meta charset="ISO-8859-1">
<title>Corona Virus Tracker</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>

	<div class="row">
		<div class="container">
			<div id = "header">
				<h1 class="text-center"><img id="banhmi" alt="This is a show" src="https://thumbs.dreamstime.com/b/banh-mi-isolated-white-background-vietnamese-style-sandwich-hand-drawn-asian-food-vietnamese-street-food-great-icon-menu-design-179845742.jpg" style="width: 150px">VIETNAM</h1>
			</div>
			<table class="table table-bordered" id="vietnam">
				<thead>
					<tr>
						<th id="tableHeader">City Name</th>
						<th id="tableHeader">Cases</th>
						<th id="tableHeader">Being Treated</th>
						<th id="tableHeader">Recovered</th>
						<th id="tableHeader">Deaths</th>
						
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="listCity" items="${listCity}">
						<tr>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listCity.cityName}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listCity.cityCases}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listCity.beingTreated}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listCity.cityRecovered}" /></td>
							<td id="tableBody" class="filterable-cell"><c:out
									value=" ${listCity.cityDeath}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include><br>
</body>

</html>
