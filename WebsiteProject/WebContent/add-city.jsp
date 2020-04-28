<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add City</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav_bar.jsp"></jsp:include>

	<br>
	<%-- TO-DO: CREATE A FORM FOR ADDING USER --%>
	<form action="insertCity" method="post">
		<h3 class="text-center">ADD CITY</h3>
		<fieldset class="form-group">
			<label>City Name:</label> <input type="text" class="form-control"
				required="required" name="cityName"> <br> <br> <label>Cases:</label>
			<input type="text" class="form-control" required="required"
				name="cityCases"> <br> <br> <label>Being
				Treated:</label> <input type="text" class="form-control" required="required"
				name="beingTreated"><br> <br> <label>Recovered:</label>
				 <input type="text" class="form-control" required="required"
				name="cityRecovered"><br> <br><label>Deaths:</label>
				 <input type="text" class="form-control" required="required"
				name="cityDeaths"><br> <br>
		</fieldset>
		<button type="submit" class=" btn btn-success">ADD</button>

	</form>

</body>
</html>
