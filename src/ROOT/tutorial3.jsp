<!DOCTYPE html>
<html lang="en">
<head>
    <title>JSP TUTORIAL 3</title>
</head>
<body>

    <div>
    <h1>MyFileIo.java</h1>
    <img src="images/PersonJava.png" />
    </div>

    <div>
    <h1>Custom class packaged in a JAR file</h1>
    <%@ page import="examplejarpackage.MyFileIo" %>
    <p>Attempt to write to filename.txt with content "Hey"</p>
    <% 
    	MyFileIo f = new MyFileIo();
	f.writeToFile("Hey");
    %>
    </div>

    <p><a href="filename.txt">filename.txt content</a></p>

</body>
</html>
