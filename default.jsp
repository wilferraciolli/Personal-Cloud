<%@ page import="java.io.*"%>
<html>
<head>

<style type="text/css" media="screen">
  #tr:hover
	{
		color: #000;
		background: #FCF;
	}
</style>

</head>

<body BGCOLOR=#E8E8E8>
<img src="Pictures/header.png" alt="Header CLoud" style="margin:auto;display:block;"><br>
<hr/>
<CENTER>
<a href="default.jsp">Home</a>
<a href="upload.jsp">Upload a file</a>
</CENTER>
<hr/>
<table>
<table BORDER=5 CELLSPACING=10 align="center" style="background-color:#E0E0E0;">
<tr onMouseOver="style='background-color:lightblue;'">
<tr><th>File Name</th><th>Download File</th><th>Delete File</th>
<%

String directory = "C:\\Uploadedfiles";
File f = new File(directory);
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
        	if(files[i].isDirectory()) {
	            String name=files[i].getName();
	            String path=files[i].getPath();
	            %>
	             <tr><td><%=name%></td><td no border><a href="Directories.jsp?f=<%=path%>"><center>Open Folder</center> </a></td></tr>
	            <%
            }
        	else{
        		String name=files[i].getName();
	            String path=files[i].getPath();
        		%>
        		<tr><td><%=name%></td><td><a href="download.jsp?f=<%=path%>"><center>Download </center> </a></td></tr>
        		<%       		
        	}

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
