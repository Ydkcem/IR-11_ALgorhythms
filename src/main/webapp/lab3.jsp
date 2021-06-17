
<%@page import="IR11.Lab3.Calculator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3</title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 3</h1>
            <div id="laba">
                <%! Calculator calculator = new Calculator();%>
                <%calculator.InitArray();%>
                <p>Array: <%= calculator.DisplayArray()%></p>
                <p>Result: <%= calculator.FindSequenceLength()%></p>
            </div>
        </div>
    </body>
</html>
