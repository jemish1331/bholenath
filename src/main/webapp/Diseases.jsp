<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function cc(form2)
{
	alert("please contact nearby doctor");
}
function si(form2)
{
	alert("please contact nearby doctor");
}
function ci(form2)
{
	alert("please contact nearby doctor");
}
function ti(form2)
{
	alert("please contact nearby doctor");
}
function other1(form2)
{
	alert("please contact nearby doctor");
}
</script>
<style>
body{
background-image:url(infectious.png);
background-repeat:no-repeat;
background-size:120% 115%;
}
#cold
{
margin-left:200px;
margin-top:45px;
}
input{
height:50px;
width:100px;
font-size:15px;
font-weight:bold;
color: green;
}
input[type=submit]
{
color:green;
margin-top: 500px;
margin-left:100px;
font-weight:bolder;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="form2" action="backtofp">
<a href="cc.html"><input type="button" value="cold & cough" id="cold" ></a>  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp;
<a href="si.html"><input type="button" value="skin-infe" > </a> &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;   &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; 
<a href="ti.html"><input type="button" value="throat-infe." ></a>  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;
<a href="ci.html"><input type="button" value="colon-infe."></a>&nbsp;  &nbsp;  &nbsp;    &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;
<input type="button" value="other" onclick="other1(form2)">
<br>
<input type="submit" value="Back">
</form>
</body>
</html>