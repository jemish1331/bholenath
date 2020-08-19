<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
background-image:url(mainpage.png);
background-size:100% 10000%;
background-repeat:no-repeat;
}
.a{
position:absolute;
bottom:25%;
left:50%;
margin-left:-8%;
}
.b{
position:absolute;
bottom:25%;
left:50%;
margin-left:4%;
}
input[type=submit]
{
height:40px;
width:90px;
color:red;
}
</style>
</head>
<body>
<form class=a action="signup">
<input type="submit" value="Sign-up"> 
</form>
<form class=b action="signin">
<input type="submit" value="Sign-in">
</form>
</body>
</html>