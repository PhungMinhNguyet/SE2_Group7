<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>News Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<style>
#container{
    margin-top:30px;
}
#a_new{
    width: 70%;
    
    float: left;
   
}
#other_new{
    width: 25%;
   height: 1000px;
    float: right;
    margin-right:30px;
}


 #more{
    font-size: 20px;
}
.video{
margin-left: auto;
margin-right: auto;
display: block;
}
#new_info{
    font-family: 'Montserrat', sans-serif;
    color: red;
    font-size: 25px;
}
#img_new{
    width: 90%;
   margin-left: auto;
   margin-right: auto;
   display: block;
}
#img_navbar{
width: 90%;
height:200px;
backgound-size: cover;
float:top;
}
.txt{
font-family: 'Poppins', sans-serif;
font-size: 20px;
padding: 25px;
color:black;
}
#title_new{
text-align: center;
font-size: 25px;
font-weight: 2px;
font-family: 'Poppins', sans-serif;
}
#t{
font-family: 'Poppins', sans-serif;
font-size: 20px;
color:black;
text-align:center;
}
</style>
<body>
<jsp:include page="nav_bar.jsp"></jsp:include><br>
 <div id='container'>
                <div id='a_new'>
                    <h1 id='title_new'><b><c:out value="${selected_News.title }"/></b></h1>
                    <p class='txt' id= 'content_new'>
                        <c:out value="${selected_News.content }"/>
                    </p>
                    <p class='txt'id='more'>Watch more suggestions:</p>
                    <iframe class='video' width="600" height="400"
                    src="https://www.youtube.com/embed/<c:out value='${selected_News.video}' />">
                    </iframe>
                </div>
                <div id='other_new'>
                    <p id='new_info'><b><u>New Information</u></b></p>
                    	<c:forEach var="s_new" items="${someNews}">
                    	<img id='img_navbar'src="<c:out value="${s_new.image}" />">
                    <p id='t'><a  href="readNews?id=<c:out value="${s_new.id}" />" ><b><c:out value="${s_new.title}" /></b><a/></p>
					<p class="txt"><c:out value="${s_new.content}" /></p>
					</c:forEach>
                    
                </div>
        </div>
	</body>
</html>

