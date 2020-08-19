<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function valid(form1)
{
var pas1=form1.password.value;
var pas2=form1.cpassword.value;
var eid1=form1.eid.value;
if(eid1=="")
{
alert("please enter valid mail id");
}
else if(pas1!=pas2 || pas1.length()<8)
{
alert("please enter valid password");
}
}

</script>
<meta charset="ISO-8859-1">
<style>
body
{
background-image: url(signup.png);
background-size:100% 235%;
background-repeat:no-repeat;
}
table
{
color:green;
font-weight:bold;
border-collapse:separate;
border-spacing:0 1em; 
}
input[type=text]
{

color:green;
}
input[type=submit]
{
background-color:lightgrey;
color: green;
font-weight:bold; 
height: 30px;
}
input[type=date]
{

color:green;
}
</style>
</head>
<body>
<center>

<form  action="firstpage" name="form1">
<table>
<tr>
<td>First-Name:</td>  
<td><input type="text" name="fname"></td>
</tr>
<tr>
<td>Last-Name : </td>
<td> <input type="text" name="lname"></td>
</tr>
<tr>
<td>Email-Id : </td>
<td> <input type="text" name="eid"></td>
</tr>
<tr>
<td>Age
<td> <input type="number" name="age" ></td>
</tr>
<tr>
<td>Password :<br>(Maximum of 8 char.) </td>
<td> <input type="password" name="password"  ></td>
</tr>
<tr>
<td>Confirm-Password : </td>
<td> <input type="password" name="cpassword" onblur="valid(form1)" ></td>
</tr>

<tr >
<td colspan="2">
 <center><input type="submit" value="submit"> </center>
</td>

</tr>
</form>
</table>
</center>

</body>
</html>