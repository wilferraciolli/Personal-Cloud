<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal CLoud Log in</title>
</head>
<body BGCOLOR=#E8E8E8>
<img src="Pictures/header.png" alt="Header CLoud" style="margin:auto;display:block;"><br>
<hr/>
  <form action="Authentication.jsp" method="post">
	<CENTER>
		<font color="blue" size="25">
 		<marquee>Please login to access your Personal Cloud</marquee></font>
		<label>User Name</label></br>
		<input name="userName" type="text" id="userBox" maxleght="30" /></br>
		<label>Password</label></br>
		<input name="passwrod" type="password" id="userBox" maxlenght="20" /></br>
		<input type="submit" id="signButton" value="Sing In">
	</CENTER>
		
	</form>
	
<div id=footer>
	<center>
	<hr/>
	Developed by Group 18 NTU 2013
	<hr/>
	</center>
</div>
	</body>
</html>
