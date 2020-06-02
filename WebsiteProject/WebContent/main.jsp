<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Virus Tracker</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
.main_header{
 height:450px;
 width: 100%;
 
}
.rightside h1{
font-size: 3rem;
}
@keyframes gocorona {
        0%{ transform: rotate(0);}
        100%{ transform: rotate(360deg);}
    }
.corona_rot img{
animation: gocorona 3s linear infinite;
}
@keyframes heartbeat {
        0%{ transform: scale(.75);}
        20%{ transform: scale(1);}
        40%{ transform: scale(0.75);}
        60%{ transform: scale(1);}
        80%{ transform: scale(0.75);}
        100%{ transform: scale(0.75);}
    }
.leftside img{
animation:heartbeat 50s linear infinite;
}
.corona_update{
margin:0 0 30px 0;

}
.corona_update h3{
color:#ff7675;
}
.corona_update h1{
font-size: 2rem;
text-align:center;
}
#news{
     background-color: #f1f1f1;
}
</style>
<body>
<jsp:include page="nav_bar.jsp"></jsp:include><br>
<div class="main_header">
        <div class="row w-100 h-100">
            <div class="col-lg-5 col-md-5 col-12 order-lg-1 order-2">
                <div class="leftside w-100 h-100 d-flex justify-content-center align-items-center">
                    <img src="http://pngimg.com/uploads/earth/earth_PNG33.png" alt="online-img" width="300" height="300">
                </div>
            </div>

            <div class="col-lg-7 col-md-7 col-12 order-lg-2 order-1">
                <div class="rightside w-100 h-100 d-flex justify-content-center align-items-center">
                    <h1>Let's Stay Safe and Fight Together Against Cor<span class= "corona_rot"><img 
                        src="http://pngimg.com/uploads/stop_coronavirus/stop_coronavirus_PNG34.png" alt="online-img" width="60" height="60">na</span> Virus</h1>
                </div>
            </div>

        </div>
    </div>
<section class="corona_update" id="world">
<c:forEach var="lstWorld" items="${lstWorld}">
      <div class="mb-5 mt-7">
            <h3 class="text-center">GLOBAL COVID-19 UPDATES</h3>
        </div>
        <div  class="d-flex justify-content-around align-items-center">
          <div class="">
                <h1 class="count">
                    <a href="info?countryId=<c:out value='${lstWorld.countryId}' />">
                        <c:out value="${lstWorld.countryName}" />
                    </a>
                </h1>
               
            </div>
            <div class="">
                <h1 class="count">
                    <c:out value="${lstWorld.cases}" />
                </h1>
                <p>Cases</p>
            </div>
            <div class="">
                <h1 class="count">
                    <c:out value="${lstWorld.active}" />
                </h1>
                <p>Active</p>
            </div>
            <div class="">
                <h1 class="count">
                    <c:out value="${lstWorld.recovered}" />
                </h1>
                <p>Recovered</p>
            </div>
            <div class="">
                <h1 class="count">
                    <c:out value="${lstWorld.deaths}" />
                </h1>
                <p>Deaths</p>
            </div>
        
 </div>
 </c:forEach>
    </section>
   
     <div class="container-fluid sub_sectiion pt-5 pb-5" id="statistics">
        <div class="section-header text-center  mb-4 mt-5">
            <h1 style="color:#ff7675;">Statistics</h1>
        </div>
        <div class="row pt-5">
            <div class="col-lg-5 col-md-6 col-12">
        <h2 id="live">Continent</h2>

			<table class="table table-bordered" id="continent">
				<thead>
					<tr>
						<th>Statistics</th>
						<th>Cases</th>
						<th>Active</th>
						<th>Recovered</th>
						<th>Deaths</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="lstContinent" items="${lstContinent}">
						<tr>
							<td><c:out
										value="${lstContinent.continentName}" /></td>
							<td><c:out value="${lstContinent.continentCases}" /></td>
							<td><c:out value="${lstContinent.continentActive}" /></td>
							<td><c:out value="${lstContinent.continentRecovered}" /></td>
							<td><c:out value="${lstContinent.continentDeaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<h2 id="statistic">Country's Statistics</h2>
			<table class="table table-bordered" id="country">
				<thead>
					<tr>
						<th>Country Name</th>
						<th>Cases</th>
						<th>Active</th>
						<th>Recovered</th>
						<th>Deaths</th>
					</tr>
				</thead>
				<tbody style="height: 10px !important; overflow: scroll;">
					<c:forEach var="list" items="${listCountry}">
						<tr>
							<td class="filterable-cell"><a
								href="info?countryId=<c:out value='${list.countryId}' />"><c:out
										value=" ${list.countryName}" /></a></td>
							<td class="filterable-cell"><c:out value=" ${list.cases}" /></td>
							<td class="filterable-cell"><c:out value=" ${list.active}" /></td>
							<td class="filterable-cell"><c:out
									value=" ${list.recovered}" /></td>
							<td class="filterable-cell"><c:out value=" ${list.deaths}" /></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		<a href="<%=request.getContextPath()%>/list" id="list">View Full List Here</a>
		   </div>
		    <div class="col-lg-6 col-md-6 col-12">
                <div id="news">
                      <div class="section-header leftside mb-5 mt-5 ml-10">
             <h2><img style="width:30px;margin-right:7px" src="data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjUxMnB0IiB2aWV3Qm94PSIwIC0yMCA1MTIgNTEyIiB3aWR0aD0iNTEycHQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0ibTQ0LjE1MjM0NCA0NzIuNjYwMTU2di0uMDExNzE4Yy0yNC4zODI4MTMtLjAwMzkwNy00NC4xNTIzNDQtMTkuNzUzOTA3LTQ0LjE1MjM0NC00NC4xMzY3MTl2LTM0Mi41NzQyMTljMC0xMC40Mzc1IDguNDYwOTM4LTE4Ljg5ODQzOCAxOC44OTg0MzgtMTguODk4NDM4aDE2OC40NjQ4NDN2NDA1LjYyMTA5NHptMCAwIiBmaWxsPSIjZThlOWVhIi8+PHBhdGggZD0ibTQ0LjE1MjM0NCA2Ny4wMzkwNjJoNi43NjU2MjV2MzYxLjQ2ODc1YzAgMTcuNzAzMTI2LTEwLjQyMTg3NSAzMi45NTMxMjYtMjUuNDU3MDMxIDM5Ljk4ODI4MiA1LjY3NTc4MSAyLjY1NjI1IDEyLjAwNzgxMiA0LjE0ODQzNyAxOC42OTE0MDYgNC4xNDg0Mzd2LjAxNTYyNWgxNDMuMjEwOTM3di00MDUuNjIxMDk0em0wIDAiIGZpbGw9IiNkMGQxZDIiLz48cGF0aCBkPSJtMTA3LjE5OTIxOSAwYy0xMC40MzM1OTQgMC0xOC44OTQ1MzEgOC40NjA5MzgtMTguODk0NTMxIDE4Ljg5ODQzOHY0MDkuNjEzMjgxYzAgMjQuMzgyODEyLTE5Ljc2OTUzMiA0NC4xNTIzNDMtNDQuMTUyMzQ0IDQ0LjE1MjM0M2g0MjMuNjk1MzEyYzI0LjM4MjgxMyAwIDQ0LjE1MjM0NC0xOS43Njk1MzEgNDQuMTUyMzQ0LTQ0LjE1MjM0M3YtNDA5LjYxMzI4MWMwLTEwLjQzNzUtOC40NjA5MzgtMTguODk4NDM4LTE4Ljg5ODQzOC0xOC44OTg0Mzh6bTAgMCIgZmlsbD0iI2YyZjNmMyIvPjxwYXRoIGQ9Im0yNjcuNTE5NTMxIDI5Mi44Mzk4NDRoLTEwNS45NjQ4NDNjLTUuODMyMDMyIDAtMTAuNTU4NTk0LTQuNzI2NTYzLTEwLjU1ODU5NC0xMC41NTQ2ODh2LTEwNS45NjQ4NDRjMC01LjgzMjAzMSA0LjcyNjU2Mi0xMC41NTg1OTMgMTAuNTU4NTk0LTEwLjU1ODU5M2gxMDUuOTY0ODQzYzUuODMyMDMxIDAgMTAuNTU4NTk0IDQuNzI2NTYyIDEwLjU1ODU5NCAxMC41NTg1OTN2MTA1Ljk2NDg0NGMtLjAwMzkwNiA1LjgyODEyNS00LjcyNjU2MyAxMC41NTQ2ODgtMTAuNTU4NTk0IDEwLjU1NDY4OHptMCAwIiBmaWxsPSIjZmZjZTcxIi8+PHBhdGggZD0ibTE4MS45MDIzNDQgMjgyLjI4NTE1NnYtMTA1Ljk2NDg0NGMwLTUuODMyMDMxIDQuNzI2NTYyLTEwLjU1ODU5MyAxMC41NTg1OTQtMTAuNTU4NTkzaC0zMC45MDYyNWMtNS44MjgxMjYgMC0xMC41NTg1OTQgNC43MjY1NjItMTAuNTU4NTk0IDEwLjU1ODU5M3YxMDUuOTY0ODQ0YzAgNS44MjgxMjUgNC43MjY1NjIgMTAuNTU0Njg4IDEwLjU1ODU5NCAxMC41NTQ2ODhoMzAuOTA2MjVjLTUuODMyMDMyIDAtMTAuNTU4NTk0LTQuNzI2NTYzLTEwLjU1ODU5NC0xMC41NTQ2ODh6bTAgMCIgZmlsbD0iI2U1Yjk2NSIvPjxnIGZpbGw9IiM0YTUzNTkiPjxwYXRoIGQ9Im00NTcuMjg5MDYyIDE3My4yNjU2MjVoLTE0My40MDIzNDNjLTQuMTQ0NTMxIDAtNy41LTMuMzU5Mzc1LTcuNS03LjUgMC00LjE0NDUzMSAzLjM1NTQ2OS03LjUgNy41LTcuNWgxNDMuNDAyMzQzYzQuMTQwNjI2IDAgNy41IDMuMzU1NDY5IDcuNSA3LjUgMCA0LjE0MDYyNS0zLjM1OTM3NCA3LjUtNy41IDcuNXptMCAwIi8+PHBhdGggZD0ibTQ1Ny4yODkwNjIgMjM2LjgwMDc4MWgtMTQzLjQwMjM0M2MtNC4xNDQ1MzEgMC03LjUtMy4zNTU0NjktNy41LTcuNSAwLTQuMTQwNjI1IDMuMzU1NDY5LTcuNSA3LjUtNy41aDE0My40MDIzNDNjNC4xNDA2MjYgMCA3LjUgMy4zNTkzNzUgNy41IDcuNSAwIDQuMTQ0NTMxLTMuMzU5Mzc0IDcuNS03LjUgNy41em0wIDAiLz48cGF0aCBkPSJtNDU3LjI4OTA2MiAzMDAuMzM5ODQ0aC0xNDMuNDAyMzQzYy00LjE0NDUzMSAwLTcuNS0zLjM1NTQ2OS03LjUtNy41IDAtNC4xNDA2MjUgMy4zNTU0NjktNy41IDcuNS03LjVoMTQzLjQwMjM0M2M0LjE0MDYyNiAwIDcuNSAzLjM1OTM3NSA3LjUgNy41IDAgNC4xNDQ1MzEtMy4zNTkzNzQgNy41LTcuNSA3LjV6bTAgMCIvPjxwYXRoIGQ9Im00NTcuMjg5MDYyIDM2My44Nzg5MDZoLTMwNi4yOTI5NjhjLTQuMTQwNjI1IDAtNy41LTMuMzU1NDY4LTcuNS03LjUgMC00LjE0MDYyNSAzLjM1OTM3NS03LjUgNy41LTcuNWgzMDYuMjkyOTY4YzQuMTQwNjI2IDAgNy41IDMuMzU5Mzc1IDcuNSA3LjUgMCA0LjE0NDUzMi0zLjM1OTM3NCA3LjUtNy41IDcuNXptMCAwIi8+PHBhdGggZD0ibTQ1Ny4yODkwNjIgNDI3LjQyMTg3NWgtMzA2LjI5Mjk2OGMtNC4xNDA2MjUgMC03LjUtMy4zNTkzNzUtNy41LTcuNSAwLTQuMTQ0NTMxIDMuMzU5Mzc1LTcuNSA3LjUtNy41aDMwNi4yOTI5NjhjNC4xNDA2MjYgMCA3LjUgMy4zNTU0NjkgNy41IDcuNSAwIDQuMTQwNjI1LTMuMzU5Mzc0IDcuNS03LjUgNy41em0wIDAiLz48cGF0aCBkPSJtMTQzLjQ2ODc1IDExOC41di04MS42NDA2MjVjMC0xLjY3OTY4Ny43OTY4NzUtMi45NTcwMzEgMi4zOTA2MjUtMy44Mzk4NDQgMS41OTM3NS0uODc4OTA2IDMuNTIzNDM3LTEuMzIwMzEyIDUuNzg5MDYzLTEuMzIwMzEyIDMuMDE1NjI0IDAgNS4zMjQyMTguNTQ2ODc1IDYuOTE3OTY4IDEuNjM2NzE5IDEuNTg5ODQ0IDEuMDg5ODQzIDMuMzUxNTYzIDMuNDQxNDA2IDUuMjg1MTU2IDcuMDQyOTY4bDI0LjI3NzM0NCA0Ni45MjU3ODJ2LTUwLjU3MDMxM2MwLTEuNjc5Njg3Ljc5Njg3NS0yLjkzNzUgMi4zOTA2MjUtMy43NzczNDQgMS41ODk4NDQtLjgzNTkzNyAzLjUyMzQzOC0xLjI1NzgxMiA1Ljc4NTE1Ny0xLjI1NzgxMiAyLjI2NTYyNCAwIDQuMTk1MzEyLjQyMTg3NSA1Ljc4OTA2MiAxLjI1NzgxMiAxLjU5Mzc1LjgzOTg0NCAyLjM5MDYyNSAyLjA5NzY1NyAyLjM5MDYyNSAzLjc3NzM0NHY4MS43Njk1MzFjMCAxLjU5Mzc1LS44MjAzMTMgMi44NTE1NjMtMi40NTMxMjUgMy43NzM0MzgtMS42MzY3MTkuOTIxODc1LTMuNTQ2ODc1IDEuMzgyODEyLTUuNzI2NTYyIDEuMzgyODEyLTQuNDQ1MzEzIDAtNy41ODk4NDQtMS43MTg3NS05LjQzMzU5NC01LjE1NjI1bC0yNy4wNDY4NzUtNTAuNTc0MjE4djUwLjU3NDIxOGMwIDEuNTkzNzUtLjgxNjQwNyAyLjg1MTU2My0yLjQ1MzEyNSAzLjc3MzQzOC0xLjYzNjcxOS45MjE4NzUtMy41NDI5NjkgMS4zODI4MTItNS43MjI2NTYgMS4zODI4MTItMi4yNjU2MjYgMC00LjE5NTMxMy0uNDYwOTM3LTUuNzg5MDYzLTEuMzgyODEyLTEuNTkzNzUtLjkyNTc4Mi0yLjM5MDYyNS0yLjE3OTY4OC0yLjM5MDYyNS0zLjc3NzM0NHptMCAwIi8+PHBhdGggZD0ibTIxOS41NzgxMjUgMTE4LjV2LTgxLjY0MDYyNWMwLTEuNTkzNzUuNzEwOTM3LTIuODUxNTYzIDIuMTQwNjI1LTMuNzc3MzQ0IDEuNDIxODc1LS45MjE4NzUgMy4xMDE1NjItMS4zODI4MTIgNS4wMzEyNS0xLjM4MjgxMmg0NC43ODUxNTZjMS42NzU3ODIgMCAyLjk1MzEyNS43MTQ4NDMgMy44MzU5MzggMi4xNDA2MjUuODgyODEyIDEuNDI1NzgxIDEuMzIwMzEyIDMuMDYyNSAxLjMyMDMxMiA0LjkwMjM0NCAwIDIuMDE1NjI0LS40NjA5MzcgMy43MzQzNzQtMS4zODI4MTIgNS4xNjAxNTYtLjkyNTc4MiAxLjQyNTc4MS0yLjE4MzU5NCAyLjEzNjcxOC0zLjc3MzQzOCAyLjEzNjcxOGgtMzUuNjAxNTYydjI1LjE2MDE1N2gxOS4xMjEwOTRjMS41ODk4NDMgMCAyLjg0NzY1Ni42NTIzNDMgMy43NzM0MzcgMS45NTMxMjUuOTIxODc1IDEuMzAwNzgxIDEuMzgyODEzIDIuODI4MTI1IDEuMzgyODEzIDQuNTg5ODQ0IDAgMS41OTM3NS0uNDQxNDA3IDMuMDM5MDYyLTEuMzIwMzEzIDQuMzM5ODQzcy0yLjE2MDE1NiAxLjk0OTIxOS0zLjgzNTkzNyAxLjk0OTIxOWgtMTkuMTIxMDk0djI1LjI4OTA2MmgzNS42MDE1NjJjMS41ODk4NDQgMCAyLjg0NzY1Ni43MTA5MzggMy43NzM0MzggMi4xMzY3MTkuOTIxODc1IDEuNDI5Njg4IDEuMzgyODEyIDMuMTQ0NTMxIDEuMzgyODEyIDUuMTYwMTU3IDAgMS44NDM3NS0uNDM3NSAzLjQ4MDQ2OC0xLjMyMDMxMiA0LjkwMjM0My0uODc4OTA2IDEuNDI5Njg4LTIuMTYwMTU2IDIuMTQwNjI1LTMuODM1OTM4IDIuMTQwNjI1aC00NC43ODUxNTZjLTEuOTI5Njg4IDAtMy42MDkzNzUtLjQ2MDkzNy01LjAzMTI1LTEuMzgyODEyLTEuNDI5Njg4LS45MjU3ODItMi4xNDA2MjUtMi4xNzk2ODgtMi4xNDA2MjUtMy43NzczNDR6bTAgMCIvPjxwYXRoIGQ9Im0yODQuODY3MTg4IDM4LjI0MjE4OGMwLTEuNzYxNzE5IDEuMTMyODEyLTMuMjkyOTY5IDMuMzk4NDM3LTQuNTkzNzUgMi4yNjE3MTktMS4yOTY4NzYgNC42MDkzNzUtMS45NDkyMTkgNy4wNDI5NjktMS45NDkyMTkgMy4wMTk1MzEgMCA0LjgyNDIxOCAxLjA4OTg0MyA1LjQxMDE1NiAzLjI2OTUzMWwxOS44NzUgNjguMTgzNTk0IDEwLjY5MTQwNi00My43NzczNDRjLjc1NzgxMy0zLjAxOTUzMSAzLjQ0MTQwNi00LjUyNzM0NCA4LjA1NDY4OC00LjUyNzM0NCA0LjUyNzM0NCAwIDcuMTY3OTY4IDEuNTA3ODEzIDcuOTIxODc1IDQuNTI3MzQ0bDEwLjY5NTMxMiA0My43NzczNDQgMTkuODc1LTY4LjE4MzU5NGMuNTg1OTM4LTIuMTc5Njg4IDIuMzkwNjI1LTMuMjY5NTMxIDUuNDEwMTU3LTMuMjY5NTMxIDIuNDI5Njg3IDAgNC43NzczNDMuNjUyMzQzIDcuMDQyOTY4IDEuOTQ5MjE5IDIuMjY1NjI1IDEuMzAwNzgxIDMuMzk4NDM4IDIuODMyMDMxIDMuMzk4NDM4IDQuNTkzNzUgMCAuNS0uMDg1OTM4IDEuMDAzOTA2LS4yNTM5MDYgMS41MDc4MTJsLTI0LjkwNjI1IDc5LjEyODkwNmMtMS4yNTc4MTMgMy42OTE0MDYtNC44MjQyMTkgNS41MzUxNTYtMTAuNjk1MzEzIDUuNTM1MTU2LTIuNTE1NjI1IDAtNC43NzczNDQtLjQ4NDM3NC02Ljc5Mjk2OS0xLjQ0OTIxOC0yLjAxMTcxOC0uOTYwOTM4LTMuMjI2NTYyLTIuMzI0MjE5LTMuNjQ0NTMxLTQuMDg1OTM4bC04LjA1MDc4MS0zMy45Njg3NS04LjE3OTY4OCAzMy45Njg3NWMtLjQyMTg3NSAxLjc2MTcxOS0xLjYzMjgxMiAzLjEyNS0zLjY0ODQzNyA0LjA4NTkzOC0yLjAxMTcxOS45NjQ4NDQtNC4yNzczNDQgMS40NDkyMTgtNi43OTI5NjkgMS40NDkyMTgtMi42MDE1NjIgMC00LjkwNjI1LS40ODQzNzQtNi45MTc5NjktMS40NDkyMTgtMi4wMTE3MTktLjk2MDkzOC0zLjI2OTUzMS0yLjMyNDIxOS0zLjc3MzQzNy00LjA4NTkzOGwtMjQuOTEwMTU2LTc5LjEyODkwNmMtLjE2Nzk2OS0uNTAzOTA2LS4yNS0xLjAwNzgxMi0uMjUtMS41MDc4MTJ6bTAgMCIvPjxwYXRoIGQ9Im0zOTcuODM1OTM4IDEwOS4xOTE0MDZjMC0xLjkyOTY4Ny43MzA0NjgtMy44Nzg5MDYgMi4xOTkyMTgtNS44NDc2NTYgMS40Njg3NS0xLjk3MjY1NiAzLjEyNS0yLjk1NzAzMSA0Ljk2ODc1LTIuOTU3MDMxIDEuMDg5ODQ0IDAgMi4zMjgxMjUuNTIzNDM3IDMuNzEwOTM4IDEuNTY2NDA2IDEuMzg2NzE4IDEuMDQ2ODc1IDIuNzI2NTYyIDIuMjAzMTI1IDQuMDI3MzQ0IDMuNDY0ODQ0IDEuMjk2ODc0IDEuMjY1NjI1IDMuMTY0MDYyIDIuNDE3OTY5IDUuNTk3NjU2IDMuNDY0ODQzIDIuNDMzNTk0IDEuMDQyOTY5IDUuMTEzMjgxIDEuNTY2NDA3IDguMDUwNzgxIDEuNTY2NDA3IDQuMDI3MzQ0IDAgNy4zNzg5MDYtLjkyMTg3NSAxMC4wNjI1LTIuNzY5NTMxIDIuNjgzNTk0LTEuODM5ODQ0IDQuMDI3MzQ0LTQuNTY2NDA3IDQuMDI3MzQ0LTguMTc1NzgyIDAtMi41MTU2MjUtLjczNDM3NS00Ljc1NzgxMi0yLjIwMzEyNS02LjczMDQ2OC0xLjQ2NDg0NC0xLjk2ODc1LTMuMzk0NTMyLTMuNjA1NDY5LTUuNzg1MTU2LTQuOTA2MjUtMi4zOTA2MjYtMS4yOTY4NzYtNS4wMTE3MTktMi41NTQ2ODgtNy44NjMyODItMy43NzM0MzgtMi44NTE1NjItMS4yMTQ4NDQtNS43MjI2NTYtMi41NzgxMjUtOC42MTcxODctNC4wODU5MzgtMi44OTA2MjUtMS41MTE3MTgtNS41MzUxNTctMy4yMTA5MzctNy45MjU3ODEtNS4wOTc2NTYtMi4zOTA2MjYtMS44ODY3MTgtNC4zMjAzMTMtNC40MDIzNDQtNS43ODUxNTctNy41NDY4NzUtMS40Njg3NS0zLjE0NDUzMS0yLjIwMzEyNS02LjczMDQ2OS0yLjIwMzEyNS0xMC43NTc4MTIgMC00LjUwNzgxMy45MDIzNDQtOC40OTIxODggMi43MDcwMzItMTEuOTM3NSAxLjgwMDc4MS0zLjQ0OTIxOSA0LjIxNDg0My02LjEyODkwNyA3LjIzMDQ2OC04LjA0Mjk2OSAzLjAxOTUzMi0xLjkxNDA2MiA2LjI0NjA5NC0zLjMyMDMxMiA5LjY4NzUtNC4yMTQ4NDQgMy40Mzc1LS44OTA2MjUgNy4wODU5MzgtMS4zMzk4NDQgMTAuOTQ1MzEzLTEuMzM5ODQ0IDIuMTc5Njg3IDAgNC40ODQzNzUuMTUyMzQ0IDYuOTE3OTY5LjQ1MzEyNiAyLjQzMzU5My4zMDA3ODEgNS4wMTE3MTguNzk2ODc0IDcuNzM4MjgxIDEuNDg0Mzc0IDIuNzIyNjU2LjY5MTQwNyA0Ljk0NTMxMiAxLjc2OTUzMiA2LjY2Nzk2OSAzLjIzMDQ2OSAxLjcxODc1IDEuNDY0ODQ0IDIuNTc4MTI0IDMuMTgzNTk0IDIuNTc4MTI0IDUuMTY3OTY5IDAgMS44NjcxODgtLjU4OTg0MyAzLjc5Njg3NS0xLjc2MTcxOCA1Ljc5Mjk2OS0xLjE3NTc4MiAxLjk5NjA5My0yLjc2OTUzMiAyLjk5MjE4Ny00Ljc4MTI1IDIuOTkyMTg3LS43NTM5MDYgMC0yLjgwODU5NC0uNzk2ODc1LTYuMTY0MDYzLTIuMzkwNjI1LTMuMzU1NDY5LTEuNTg5ODQzLTcuMDg1OTM3LTIuMzkwNjI1LTExLjE5NTMxMi0yLjM5MDYyNS00LjUyNzM0NCAwLTguMDMxMjUuODYzMjgyLTEwLjUwMzkwNyAyLjU3ODEyNS0yLjQ3NjU2MiAxLjcyMjY1Ny0zLjcxMDkzNyA0LjA4OTg0NC0zLjcxMDkzNyA3LjEwOTM3NSAwIDIuNDMzNTk0IDEuMDA3ODEzIDQuNTUwNzgyIDMuMDE5NTMxIDYuMzUxNTYzIDIuMDExNzE5IDEuODA0Njg3IDQuNTA3ODEzIDMuMjczNDM3IDcuNDg0Mzc1IDQuNDAyMzQzIDIuOTc2NTYzIDEuMTMyODEzIDYuMjAzMTI1IDIuNTU4NTk0IDkuNjg3NSA0LjI4MTI1IDMuNDc2NTYzIDEuNzE4NzUgNi43MDcwMzEgMy41ODU5MzggOS42ODM1OTQgNS41OTc2NTdzNS40NzI2NTYgNC45MjU3ODEgNy40ODgyODEgOC43NDIxODdjMi4wMTE3MTkgMy44MTY0MDYgMy4wMTk1MzIgOC4yODEyNSAzLjAxOTUzMiAxMy4zOTQ1MzIgMCA4LjYwNTQ2OC0yLjc1IDE1LjI0MjE4Ny04LjI0MjE4OCAxOS45MTQwNjJzLTEyLjcyNjU2MiA3LjAwNzgxMi0yMS42OTkyMTkgNy4wMDc4MTJjLTcuOTY4NzUgMC0xNC44MDQ2ODctMS42MzY3MTgtMjAuNTAzOTA2LTQuOTA2MjUtNS43MDcwMzEtMy4yNjk1MzEtOC41NTQ2ODctNi44MzIwMzEtOC41NTQ2ODctMTAuNjkxNDA2em0wIDAiLz48L2c+PC9zdmc+">
                Coronavirus(COVID-19) Information</h2>
                </div>
               
               
                    <c:forEach var="lstNews" items="${lstNews}">
                        <h3>
                           <a href="readNews?id=<c:out value="${lstNews.id}" />"><c:out value=" ${lstNews.title}" /></a> 
                        </h3>
                        <p id="contentNews">
                            <c:out value=" ${lstNews.content}" />
                        </p>
                        <hr>
                    </c:forEach>
                </div>

            </div>
		</div>
    </div>
<jsp:include page="footer.jsp"></jsp:include><br>
</body>
</html>