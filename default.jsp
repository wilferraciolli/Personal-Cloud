<%@ page import="java.io.*"%>
<%@ page import="java.util.List" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<html>
<head>

<script language = JAVASCRIPT>//*********************Swapping images*************
<!-- Hide script from old browsers
if (document.images)
{
	home = new Image
	homeH = new Image
	dropbox = new Image
	dropboxH = new Image
	skydrive = new Image
	skydriveH = new Image
	googledrive = new Image
	googledriveH = new Image
	music = new Image
	musicH = new Image
	upload = new Image
	uploadH = new Image
	logout = new Image
	logoutH = new Image	
		
	home.src = "Pictures/home.png"
	homeH.src = "Pictures/homeH.png"
	dropbox.src = "Pictures/dropbox.png"
	dropboxH.src = "Pictures/dropboxH.png"
	skydrive.src = "Pictures/skydrive.png"
	skydriveH.src = "Pictures/skydriveH.png"
	googledrive.src = "Pictures/googledrive.png"
	googledriveH.src = "Pictures/googledriveH.png"
	music.src = "Pictures/music.png"
	musicH.src = "Pictures/musicH.png"
	upload.src = "Pictures/upload.png"
	uploadH.src = "Pictures/uploadH.png"
	logout.src = "Pictures/logout.png"
	logoutH.src = "Pictures/logoutH.png"
}
// Stop hiding script from older browsers -->
</SCRIPT>


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
<table>
<tr height=100px>
	<td width= 100px><A HREF="default.jsp" onMouseover = "document.def.src=homeH.src" onMouseout = "document.def.src=home.src"><IMG SRC="Pictures/home.png" ALT="Home Screen" NAME="def" ></A></td>
	<td width= 100px><A HREF="Dropbox.jsp" onMouseover = "document.dropb.src=dropboxH.src" onMouseout = "document.dropb.src=dropbox.src"><IMG SRC="Pictures/dropbox.png" ALT="DropBox" NAME="dropb" ></A></td>
	<td width= 100px><A HREF="Skydrive.jsp" onMouseover = "document.skyd.src=skydriveH.src" onMouseout = "document.skyd.src=skydrive.src"><IMG SRC="Pictures/skydrive.png" ALT="Sky Drive" NAME="skyd" ></A></td>
	<td width= 100px><A HREF="Googledrive.jsp" onMouseover = "document.googled.src=googledriveH.src" onMouseout = "document.googled.src=googledrive.src"><IMG SRC="Pictures/googledrive.png" ALT="Google Drive" NAME="googled" ></A></td>
	<td width= 100px><A HREF="Music.jsp" onMouseover = "document.mus.src=musicH.src" onMouseout = "document.mus.src=music.src"><IMG SRC="Pictures/music.png" ALT="Musics" NAME="mus" ></A></td>
	<td width= 100px><A HREF="upload.jsp" onMouseover = "document.up.src=uploadH.src" onMouseout = "document.up.src=upload.src"><IMG SRC="Pictures/upload.png" ALT="Upload a File" NAME="up" ></A></td>
	<td width= 100px><A HREF="Logout.jsp" onMouseover = "document.out.src=logoutH.src" onMouseout = "document.out.src=logout.src"><IMG SRC="Pictures/logout.png" ALT="Log Out" NAME="out" ></A></td>
</tr>
</table>
</CENTER>
<CENTER>
	<b>Looged in as Group18	<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>	<%= df.format(new java.util.Date()) %>


</CENTER>
<hr/>
<%                     //Checks for user Log in
    session.getAttribute("userName");
	if(session.getAttribute("userName")==null)
	{
		response.sendRedirect("Error.jsp");
	}		
%>


<table>
<table CELLSPACING=10 align="center" style="background-color:#E0E0E0;">

<tr><th style="border:5px solid #F0F0F0;">Icon</th><th style="border:5px solid #F0F0F0;">File Name</th><th style="border:5px solid #F0F0F0;">Download File</th><th style="border:5px solid #F0F0F0;">Delete File</th>

<%
String directory = "C:\\Uploadedfiles";
File f = new File(directory);
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
        	if(files[i].isDirectory()) {
	            String name=files[i].getName();
	            String path=files[i].getPath();
	            String extension="none";
	           int index = name.lastIndexOf(".");
	           if(index > 0){
	        	   extension = name.substring(index+1);
	        	   extension = name.toLowerCase();
	           }
	            %>
	             <tr bgcolor="#E0E0E0" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#E0E0E0';">
	             <td><img src="Pictures/Icons/folders.png"></td><td><%=name%></td>
	             <td no border><a href="Directories.jsp?f=<%=path%>"><center><img src="Pictures/folder.png"></center> </a></td></tr>
	            <%
            }
        	else{
        		String name=files[i].getName();
	            String path=files[i].getPath();
        		%>
        		<tr bgcolor="#E0E0E0" onMouseOver="this.bgColor='#FFFFFF';" onMouseOut="this.bgColor='#E0E0E0';"><td><img src="Pictures/Icons/files.png"></td><td><%=name%></td><td><a href="download.jsp?f=<%=path%>"><center><img src="Pictures/download.png"></center> </a></td></tr>
        		<%       		
        	}

        }
%>

</table>

<div id=footer>
	<center>
	<hr/>
	<b>Developed by Group 18 NTU 2013
	<hr/>
	</center>
</div>
</body>
</html>


