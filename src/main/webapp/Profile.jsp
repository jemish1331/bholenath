<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
background-color: pink;
}
table{

font-size: 20px;
font-weight: bold;
border-width: 13px;
color:green;
border: 3px solid black;
width: 350px;
border-color: grey;
border-spacing: 0px;
}
td{
padding: 10px;
}

form{
margin-left: 600px;
margin-top: 200px;
}
input
{
font-size: 20px;
font-weight: bold;
color:green;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession ses=request.getSession();
String eid=(String)ses.getAttribute("Eid");
String pass=(String)ses.getAttribute("Pass");
int age=(int)ses.getAttribute("Age");
String fname=(String)ses.getAttribute("Fname");
String lname=(String)ses.getAttribute("Lname");
%>
<form action="backtofp">
<table>

<tr>
<td >First-Name:
</td>
<td >
<%=fname %>
</td>
</tr>
<tr>
<td >Last-name:
</td>
<td >
<%=lname %>
</td>
</tr>
<tr>
<td >Email-Id:
</td>
<td id="2">
<%=eid %>
</td>
</tr>
<tr>
<td >Age:
</td>
<td >
<%=age %>
</td>
</tr>
<tr>
<td >Password:
</td>
<td >
<%=pass %>
</td>
</tr>
<tr>
<td colspan="2">
<center><input type="submit" value="Back"></center>
</td>
</tr>
</table>
</form>

</body>
</html>