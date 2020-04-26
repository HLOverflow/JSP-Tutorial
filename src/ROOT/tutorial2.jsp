<!DOCTYPE html>
<html lang="en">
<head>
    <title>JSP TUTORIAL 2</title>
</head>
<body>

    <div>
    <h1>Person.java</h1>
    <img src="images/PersonJava.png" />
    </div>

    <div>
    <h1>WEB-INF</h1>
    <p>Every custom classes have to be defined within a WEB-INF directory. <br />
    Classes are stored in the WEB-INF/classes directory while JAR files in the WEB-INF/lib directory.</p>
    <p>An example of the structure of a WEB-INF directory is as follows:</p>
    <img src="images/WEBINF_structure.png" />
    </div><br />

    <div>
    <%@ page import="custompackage.Person" %>
    <p>Initialize a Person class</p>
    <% Person p = new Person("John", 18); %>
    <p>Person says "<%= p.introduce() %>"</p>
    </div>

</body>
</html>
