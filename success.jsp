<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- 
    Document   : success
    Created on : Aug 30, 2013, 9:38:03 AM
    Author     : Dev
--%>
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
td#a{	
	border:2px solid black;
	width:200px;
	padding:25px;
	
}
td{	
	border:2px solid black;
	width:600px;
	padding:25px;
	
}

table{	
	
	border:2px solid black;
}
lable{
	color:red;
}
</style>
<script>

</script>
</head> 
<body>
<div id="header">
<Img src="images/logo.jpg"/>
</div>
<div id="form"  >

<table>
<tr><td id="a">Your Name</td> 
<td><%out.println(request.getParameter("fname"));
out.println(request.getParameter("lname"));%></td></tr>

<tr><td id="a">Your Email</td> 
<td><%out.println(request.getParameter("email"));%>
</td></tr>

<tr><td id="a">Your Contact Number</td> 
<td><%out.println(request.getParameter("cno"));%>
</td></tr>

<tr><td id="a">Approximate package size</td> 
<td><%out.println(request.getParameter("pacwt"));%>
</td></tr>

<tr><td id="a">Package pickup time</td> 
<td><%out.println(request.getParameter("date"));%>
</td></tr>

<tr><td id="a">Package pickup location</td>
<td ><%out.println(request.getParameter("home"));%>
</td>
</tr>

  
    </table><br>
<lable>*Please be available on given address at specified time</lable>
  </body>
</html>
