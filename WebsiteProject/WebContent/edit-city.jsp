<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit City</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include><br>

	<%-- TO-DO: CREATE A FORM FOR UPDATING USER --%>
	<form action="updateCity" method="post">
		<h3 class="text-center">Update City</h3>
		<fieldset class="form-group">
			<label></label> <input type="hidden" type="text" class="form-control"
				name="id" value="<c:out value="${city.cityId}" />"> <br>
			<label>City Name:</label> <input type="text" class="form-control"
				name="cityName" value="<c:out value="${city.cityName}" />">
			<br> <br> <label>Cases:</label> <input type="text"
				class="form-control" name="cityCases"
				value="<c:out value="${city.cityCases}" />"> <br> <br>
			<label>Being Treated:</label> <input type="text" class="form-control"
				name="beingTreated" value="<c:out value="${city.beingTreated}" />">
			<br> <br> <label>Recovered:</label> <input type="text"
				class="form-control" name="cityRecovered"
				value="<c:out value="${city.cityRecovered}" />"> <br> <br>
			<label>Deaths:</label> <input type="text" class="form-control"
				name="cityDeaths" value="<c:out value="${city.cityDeath}" />">
			<br> <br>
			<button type="submit" class=" btn btn-success" value="SAVE">
				Update</button>
		</fieldset>
	</form>
</body>
</html>
