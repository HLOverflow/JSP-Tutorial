<!DOCTYPE html>
<html lang="en">
<head>
    <title>JSP TUTORIAL</title>
</head>
<body>

    <div>
    <h1>Showing how to process request</h1>
    <p>request is one of JSP implicit object.</p>
    <p>
    <% out.println("Your ip address is : " + request.getRemoteAddr() ); %>
    </p>
    </div><br />

    <div>
    <h1>Declaring of variables </h1>
    <!-- The <\%! symbol is used to declare variables  -->
    <%! int i = 50; %>
    <p>
    	<% out.println("Value of integer i is " + i ); %>
    </p>
    </div>


    <div>
    <h1>JSP Expressions </h1>
    <!-- The <\%= symbol is used to write expressions -->
    <p>
    <%= "This string is generated by expression" %>
    </p>

    <p> Today's date is <%= (new java.util.Date()).toLocaleString() %>
    </p>
    </div><br />

    <%-- This is JSP comment --%>

    <div>
    <h1>IF Else Condition</h1>
    
    <%! int day = 3; %>
    <p>day = <%= day %></p>

    <% if (day == 1 || day == 7) { %>
         <p> Today is weekend</p>
    <% } else { %>
         <p> Today is not weekend</p>
    <% } %>
    </div>

    <div>
    <h1>FOR loops</h1>
    <%! int fontsize; %>
    <% for (fontsize=1; fontsize<=3; fontsize++){ %>
	<font color = "green" size = "<%= fontsize %>" >FOR LOOP</font>
    <% } %>

    </div>

</body>
</html>
