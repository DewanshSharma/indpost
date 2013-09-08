<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%-- 
    Document   : register.jsp
    Created on : Aug 30, 2013, 9:30:05 AM
    Author     : Dev
--%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
	width:900px;
	margin:10px auto;
	background: #2781BA ;   
	     
}
div#header{
	background:white;
}
div#form{
	
	padding:50px 50px;
	background:white;
}
input{
	width:500px;
	
}
input#submit{
	width:100px;
}
img#aa,#ba{
	
	visibility:visible;
}
img{
	color:green;
	visibility:hidden;
}
label{
	visibility:hidden;
}
</style>
<script>
var c=0;
function myFunction(x,y,z)
{
if(x.value.length==0){
	z.style.visibility = 'hidden';
	y.innerHTML="Please fill the field".fontcolor("red");
	document.getElementById("submit").disabled = true;
	return false;
	
	}
else{
	x.value=x.value[0].toUpperCase()+x.value.substring(1,x.value.length).toLowerCase();
	c=c+1;
	y.innerHTML="";
	z.style.visibility = 'visible';
	if(c>=5)
		document.getElementById("submit").disabled = false;
	return true;}
}
function EmailValidation()
{
var x=document.getElementById('email');
var atpos=x.value.indexOf("@");
var dotpos=x.value.lastIndexOf(".");
if (atpos<1 || dotpos<(atpos+2) || (dotpos+2)>=x.value.length)
  {
  document.getElementById('emailAnchor').innerHTML="Invalid e-mail address".fontcolor("red");
	document.getElementById('eimg').style.visibility = 'hidden';
	document.getElementById("submit").disabled = true;
  return false;
	
  }
else{
x.value=x.value.toLowerCase(); 
document.getElementById('emailAnchor').innerHTML="";
document.getElementById('eimg').style.visibility = 'visible';
c=c+1;
if(c>=5)
		document.getElementById("submit").disabled = false;
return true;
}
}
function numbervalidation(){
	var x=document.the_form.cno.value;
	var y=/^[0-9]+$/;
	if(x.match(y) && x.length==10){
	document.getElementById('cnoAnchor').innerHTML="";
	document.getElementById('cimg').style.visibility = 'visible';
	c=c+1;
if(c>=5)
		document.getElementById("submit").disabled = false;
	return true;
	
}
	else{
	document.getElementById('cimg').style.visibility = 'hidden';
	document.getElementById('cnoAnchor').innerHTML="Invalid Contact Number".fontcolor("red");
	document.getElementById("submit").disabled = true;
	return false;
	
}}

</script>
</head>
<body >
<div id="header">
<Img src="images/logo.jpg" id="aa"/>

</div>
<div id="form"  >

<form name="the_form" action="deliveryinfo.jsp" method="post"  >

First Name: <br>
<input type="text" id="fname" onblur="myFunction(document.getElementById('fname'),document.getElementById('fnAnchor'),document.getElementById('fimg'))" name="fname"><i id="fnAnchor"></i><img src="images\correct.jpg" id="fimg"/>
<br>
Last Name:<br> 
<input type="text" id="lname" onblur="myFunction(document.getElementById('lname'),document.getElementById('lnAnchor'),document.getElementById('limg'))" name="lname" ><i id="lnAnchor"></i><img src="images\correct.jpg" id="limg"/>
<br>
Email Id:<br>
<input type="text" id="email" onblur="EmailValidation()" name="email" ><i id="emailAnchor"></i><img src="images\correct.jpg" id="eimg"/>
<br>
Contact Number: <br>
<input type="text" id="cno" onblur="numbervalidation()" name="cno" ><i id="cnoAnchor"></i><img src="images\correct.jpg" id="cimg"/>
<br>
From where:<br>
Home<input type="radio" name="as"><br>
Office<input type="radio" name="as"><br>
Address:<br><textarea rows="5" cols="60" id="haddr" onblur="myFunction(document.getElementById('haddr'),document.getElementById('haAnchor'),document.getElementById('himg'))" name="haddr"></textarea>
<i id="haAnchor"></i><img src="images\correct.jpg" id="himg"/>

<p></p>
<input type="submit" name="submit" value="Submit Form" disabled="true" id="submit">
</form>
</div>

</body>
</html>

