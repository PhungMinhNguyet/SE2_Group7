<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
#header{
    margin: auto;
    width: 100%;
    height: 150px;
    background-image: url(https://image.shutterstock.com/z/stock-vector-corona-virus-wuhan-virus-disease-virus-infections-prevention-methods-infographics-1635449923.jpg);
    background-size: cover;
    object-fit: cover;
    background-repeat: no-repeat;
    
}
#text_header{
    width:100%;
    height: 100px;
    
   
}
#title_header{
    width: 70%;
    height: 100px;
    float: left;
   
}
#hotline{
    width: 30%;
    height: 100%;
   float: right;
}

a{
    text-decoration: none;
}
 #icon{
width: 20%;
height:100px;
float: left;

  
}
#icon_img{
    width: 100%;
    height: 100px;
    margin: auto;
    background-size: cover;
    line-height: 90px;
    background-repeat: no-repeat;
    object-fit: cover;
}
#Webname{
width: 100%;
height: 100px;

} 
.webname{
    font-size: 20px;
    font-family: 'Montserrat', sans-serif;
}
#se2{
    color: white;
}
.webname{
    color: brown;
}
#text_hotline, #number_hotline{
    font-size: 20px;
    font-family: 'Montserrat', sans-serif;
    margin-left: 30px;
}

#number_hotline{
    height: 30px;
    font-size: 15px;
    float: right;
    
}

</style>
<body>
<div id='header'>
        <div id='text_header'>
            <div id='title_header'>
                <div id='icon'>
                    <img id ='icon_img' src="https://imageog.flaticon.com/icons/png/512/2741/2741128.png?size=1200x630f&pad=10,10,10,10&ext=png&bg=FFFFFFFF/">
                </div>
                <div id='Webname'>
                    <p id ='se2'class ='webname'><b>Group SE2</b></p>
                    <p class='webname'><b>COVID-19 EMERGENCY SUGAR DISEASES SITUATION SITE</b></p>
                </div>
            </div>
            <div id='hotline'>
                
                <p id='number_hotline'>Hotline : 19009095 / 19003228</p>
            </div>
        </div>
        
  <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">

 
  <a class="navbar-brand" href="<%=request.getContextPath()%>/">COVID-19</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="<%=request.getContextPath()%>/list">Countries</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="<%=request.getContextPath()%>/vnInfo" >VietNam</a>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/login">More </a>
      </li>
     
   </ul>
  </div>
  
</nav>
</div>

</body>
</html>