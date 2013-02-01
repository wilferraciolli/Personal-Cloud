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
		<form action="authentication.jsp" method="post">
		<CENTER>
			<font size="25">
	 		<marquee>Please login to access your Personal Cloud</marquee></font>
			<label>User Name</label></br>
			<input name="userName" type="text" value=""/></br>
			<label>Password</label></br>
			<input name="password" type="password"/></br>
			<input type="submit" value="Sing In">
		</CENTER>
		</form>
				
	<div id=content style="height:300px">
	</div>
	<div id=footer>
		<center>
		<hr/>
		Developed by Group 18 NTU 2013
		<hr/>
		</center>
	</div>
	
</body>
</html>
