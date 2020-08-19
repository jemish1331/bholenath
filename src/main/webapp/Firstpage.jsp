 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String f1=request.getParameter("fname");
String l1=request.getParameter("lname");
HttpSession ses=request.getSession();
if(f1==null && l1==null )
{ 
f1=(String)ses.getAttribute("Fname");
l1=(String)ses.getAttribute("Lname");
}
 %>
<style>
table
{
border-spacing: 13px ;
}
input[type=submit]
{
height:60px;
width:200px;
color:green;
font-size: 20px;
font-weight:bold;
}
body{
background-image: url(firstpage.png);
background-size:100% 500%;
background-repeat:no-repeat;
}


</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>
<form action="profile">
<input type="submit" value="PROFILE">
</form>
</td>
<td>
<form action="disease">
<input type="submit" value="DISEASE">
</form>
</td>
<td>
<form action="aches">
<input type="submit" value="ACHES">
</form>
</td>
<td>
<form action="exercise">
<input type="submit" value="EXERCISE">
</form>
</td>
<td>
<form action="bmi">
<input type="submit" value="BMI INDEX">
</form>
</td>
<td>
<form action="help">
<input type="submit" value="HELP">
</form>
</td>
</tr>
</table>
<center><font color="blue"><h3><i>Welcome <%=f1+" "+l1+" to Selfcare application"+"</i></h3>" %></font></center> 


</body>
</html>