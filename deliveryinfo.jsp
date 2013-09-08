<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- 
    Document   : deliveryinfo
    Created on : Aug 30, 2013, 9:36:18 AM
    Author     : Dev
--%>
<!DOCTYPE html>


<html>
    
<head>
<style type="text/css">
body{
	width:900px;
	margin:10px auto;
	background:#2781BA;
}
div#header{
	background:white;
}
div#form{
	padding:50px 50px;
	background:white;
}
input,select#frmwr{
	width:500px;
}
input#submit{
	width:100px;
}
</style>
<script src="datetimepicker_css.js"></script>
</head>
<body background="images/a.jpg">
<div id="header">
<Img src="images/logo.jpg"/>
</div>
<div id="form">
<form name="the_form" action="mycontroller.do"  method="post" onSubmit="formValidation()" >
    
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String cno=request.getParameter("cno");
String haddr=request.getParameter("haddr");
%>
<input type="hidden" name="fname" value= "<%=fname %>"/> 
<input type="hidden" name="lname" value= "<%=lname %>"/>
<input type="hidden" name="email" value= "<%=email %>"/>
<input type="hidden" name="cno" value= "<%=cno %>"/>
<input type="hidden" name="home" value= "<%=haddr %>"/>
Date and Time: <br>
<input type="text" id="date" name="date" onclick="javascript:NewCssCal('date','ddMMyyyy','dropdown',true,12,false,'future')" ><i id="dtAnchor"></i>
<br>

Package Size (in gms):<br>
<input type="text" id="pacwt" name="pacwt" onblur="javascript:Validation()" ><i id="pacwtAnchor"></i>
<br>
  
<p></p>
<input type="submit" name="submit" value="Submit Form" disabled="true" id="submit">

</form>
</div>

</body>
</html>
