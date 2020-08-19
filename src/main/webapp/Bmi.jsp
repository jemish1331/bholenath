 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function bmi(form1)
{
	var weight=form1.w.value;
	var height=form1.h.value;
	
	var bmi=weight/(height*height);
	if(bmi<25 && bmi>18.5)
		{
	    alert("your bmi is "+bmi+".  This is normal.");
		}
	else if(bmi<18.5)
	{
	     alert("your bmi is "+bmi+".  This is not normal as you are thin");
		}
	else if(bmi>25)
	{
	    alert("your bmi is "+bmi+".  This is not normal as you are fat");
		}
	
	
	} 
</script>
<style type="text/css">
form{
color:green;
font-size: 35px;
font-weight: bold;
}
input{height:37px; width:150px; font-weight: bold; font-size:25px; color:green;}
body
{
background-color: pink;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<pre>
<center>
<font color="red" size="10px">
(Note: please enter Height in meter and Weight in kg )</font>
<form name="form1" action="backtofp">
 

Enter your Weight:   <input type="text" name="w">

Enter your Height:   <input type="text" name="h">


 <input type="button" value="Submit" onclick="bmi(form1)">
 
 <input type="submit" value="Back">
             
              </form>
              </center>
               
</pre>
</body>
</html>