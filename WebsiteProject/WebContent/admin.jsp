<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
#vietnam {
	width: 80%;
	height: 50%;
		
}
</style>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav_bar_ad.jsp"></jsp:include><br>

	<br>


	<div class="row">
		<div class="container">
			<h3>VIETNAM'S STATISTIC</h3>
			<table class="table table-bordered" id="vietnam">
				<thead>
					<tr>
						<th>City Name</th>
						<th>Cases</th>
						<th>Being Treated</th>
						<th>Recovered</th>
						<th>Deaths</th>
						<th>Options</th>
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="listCity" items="${listCity}">
						<tr>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityName}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityCases}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.beingTreated}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityRecovered}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${listCity.cityDeath}" /></td>
							<td><a href="editCity?id=<c:out value='${listCity.cityId}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteCity?id=<c:out value='${listCity.cityId}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
<body>

</body>
</html>