<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Page</title>
</head>
<body BGCOLOR=#E8E8E8>
<img src="Pictures/header.png" alt="Header CLoud" style="margin:auto;display:block;"><br>
<hr/>

<center>
Your password does not match!
Please click <a href="Login.jsp">here</a> to log in!
</center>

<div id=content style="height:500px">
  </div>
	<div id=footer>
		<center>
		<hr/>
		Developed by Group 18 NTU 2013
		<%java.text.DateFormat df = new java.text.SimpleDateFormat("MM/dd/yyyy"); %>
		<%= df.format(new java.util.Date()) %> 
		<hr/>
		</center>
	</div>

</body>
</html>
