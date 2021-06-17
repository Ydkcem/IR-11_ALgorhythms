<%@page import="IR11.Lab1.Lab1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 1</title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 1</h1>
            <div id="laba">
                <%! Lab1 lab1 = new Lab1();%>
                <p>Initial value: <%= lab1.toString()%></p>
                <%lab1.IncreaseScore(33);%>
                <p>Value increased by 33: <%= lab1.toString()%></p>
                <%lab1.DecreaseScore(60);%>
                <p>Value decreased by 60: <%= lab1.toString()%></p>
            </div>
        </div>
    </body>
</html>
