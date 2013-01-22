<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.List" %>
   <%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Cloud</title>
</head>

<body BGCOLOR=#E8E8E8>
<img src="Pictures/header.png" alt="Header CLoud" style="margin:auto;display:block;"><br>
<hr/>
<CENTER>
<a href="default.jsp">Home</a>
<a href="upload.jsp">Upload a file</a>
</CENTER>
<hr/>
<table BORDER=5 CELLSPACING=10 align="center" style="background-color:#E0E0E0;">
<tr><th>File Name</th><th>Download File</th><th>Delete File</th>
<%

String newDir = request.getParameter("f");
String directory  = newDir;

File f = new File(directory);
        File[] files = f.listFiles();
           for(int i=0;i<files.length;i++){
             if(files[i].isDirectory()){
        		   String name=files[i].getName();
                   String path=files[i].getPath(); 
                   %>
                   <tr><td><%=name%></td><td><a href="Directories.jsp?f=<%=path%>">Open Folde</a></td></tr>
                        <% 
        	   }
        	   else{
            String name=files[i].getName();
            String path=files[i].getPath();
%>
<tr><td><%=name%></td><td><a href="download.jsp?f=<%=path%>">Download File</a></td></tr>
     <%}
        }
%>
</table>
<div id=footer>
	<center>
	<hr/>
	Developed by Group 18 NTU 2013
	<hr/>
	</center>
</div>
</body>
</html>




