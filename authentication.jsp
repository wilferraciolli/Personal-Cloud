<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Authentication</title>
</head>
<body>

	<%
	String userName = request.getParameter("userName");
	String passWord = request.getParameter("password");
		
	if(userName.equals("Group18") && passWord.equals("Admin")){
		session.setAttribute("userName",userName);
		response.sendRedirect("default.jsp");
	}
	else
		response.sendRedirect("Error.jsp");
		
	%>
	
</body>
</html>
