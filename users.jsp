<%@ page language="java" import="java.io.*" 
import="java.sql.*"  import ="javax.sql.*" import = "org.apache.commons.io.*" 
 %>    <%-- using java language  --%>
<%@ page import="java.util.List"  %>
 
<html>  <%-- HTML start tag --%> 
   <%-- form start tag --%> 

<body background="Pictures/background.png">
<img src="Pictures/header.png" alt="Header CLoud" style="margin:auto;display:block;"><br>
<hr/>  


<% 
String userName = request.getParameter("userName");  //  passes in username into string from login.jsp	
String passWord = request.getParameter("passWord");  // passes in password into string from login.jsp
String newUser = request.getParameter("use");   //passes in checkbox value from log in
int checker = 0;                           //declaring an int to use later
String trueUser;							//declaring string to use later							

if (newUser != null && newUser.length() != 0) {     // if the checkbox was ticked (is not null)
	  FileWriter write= new FileWriter("C:\\Group18Cloud\\userinfo.txt",true);  //define a new filewriter called f on the file at the pathname, the true means it wont overwrite the file
	  BufferedWriter outs = new BufferedWriter(write); //create the buffered writer called out on the filewriter f 
	  outs.newLine();           //new line in the file
	  outs.write(userName);		//write the username to the file	
	  outs.newLine();			// new line in the file
	  outs.write(passWord);		//write the password to the file	  
	  outs.close();                    //close the file writer outs
	  
	  new File("C:\\Group18cloud\\" + userName).mkdir();  // make a folder at the pathname called named the user's name
	  checker = 1;               //set int checker = 1	  
}

FileInputStream fstream = new FileInputStream("C:\\Group18cloud\\userinfo.txt"); //defines fileinput stream on file in path called fstream
DataInputStream in = new DataInputStream(fstream); //creates a new input stream called in on the file input stream fstream
BufferedReader reader = new BufferedReader(new InputStreamReader(in));  //create the buffered reader called reader on the datastream in  
String Line;  //define string called line
if ( checker == 0){                   // if checker is still 0 (meaning we didnt create new user)
	while ((Line = reader.readLine()) != null)   {   //set string line = next line of file, over and over till the end
		if( (userName).equals(Line) ){               // if entered username matches this line in file
		checker = 2;                             //set int checker =2
		Line = reader.readLine();                 // read in next line of file into string line
			if( (passWord).equals(Line) ){	    //if this is equal to the entered password
			checker = 3;						 // set int checker = 3
			}
		}  
	}
in.close();              // close the  file input stream in
} 

if (checker == 1){ 
	out.println("New user account has been created, go back to log in");	
	// checker will = 1 if new user was made, so output above text
	%> <p> <a href="Login.jsp">Back</a> <p>  <%  
}  //makes a back link to login page 
else if(checker == 2){         
	out.println("The password entered was incorrect"); //checker = 2 where user was matched but not password	
	%> <p> <a href="Login.jsp">Back</a> <p>  <% 
}  //makes a back link to login page 
else if(checker == 3){  
	%><center><b>You are now logged in as<%
	out.println(userName); //checker = 3 if user and password was correct so output logged in as "username
	// below is html form that links to file list and passes users name as a parameter to menu.jsp file page
	%> 
	<FORM ENCTYPE="text" ACTION="default.jsp" METHOD=POST>  
 	<input type="hidden" name="userName" value="<%=userName%>">
	<input type="submit" value="Home">   
	</form> 
	<% 
}
else {
	out.println("The username entered was incorrect  ");	//if no change to checker then no user was created and username was incorrect
	%> <p> <a href="Login.jsp">Back</a> <p> <% 	
}    //makes a back link to login page 


 

//below is SQL database stuff that i couldnt get to work

/*/Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection one = DriverManager.getConnection("jdbc:mysql://localhost3306/info","root","root");


PreparedStatement statement = one.prepareStatement("select * from userinfo");

ResultSet result = statement.executeQuery();

while(result.next())
{
	out.println(     result.getString(1)    );
	
} /*/

//out.println(u);  	// prints out username
//out.println(p);  	// 	prints out password
%>
</body>
   <%-- form end tag --%> 
</html>		 <%-- HTML end tag --%> 
