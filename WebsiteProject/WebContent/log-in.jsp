<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Corona Virus Tracker</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
</style>
<body>
              <br><br><br><br>
    <h1 class="text-center">Admin Login</h1><br>
     
        <form action="login" method="post">
        <table align="center" class="text-center">
        
        <tr>
    
           <th align="right"> Email: </th>
           <td class="text-center"><input class="form-control" name="email" size="30" /><br></td>
        </tr>
        <hr>
        <tr>
       
           <th align="right"> Password: </th>
           <td class="text-center"><input class="form-control" type="password" name="password" size="30" /><br></td>
        </tr>
       
        <tr>
       
           <td colspan ="2" align="right" class="text-center">
              <input type="submit" value ="Log in" class=" btn btn-success mb-100">
              
           </td>
        </tr>
 
        
    </table>
    </form>
   
</body>
</html>