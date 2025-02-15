<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<html>
<head>
    <title>COMP367 Web App</title>
</head>
<body>
    <%
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        String name = "Maxmillian"; // Your name hardcoded
        String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
        greeting += ", " + name + ", Welcome to COMP367";
    %>
    <h2><%= greeting %></h2>
    <p><a href="welcome">Go to Servlet Page</a></p>
</body>
</html>


