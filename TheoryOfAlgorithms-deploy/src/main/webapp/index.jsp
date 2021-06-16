<%-- 
    Document   : index
    Created on : 5 апр. 2021 г., 17:06:56
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landing Page</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" 
          crossorigin="anonymous" defer>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
          crossorigin="anonymous">
    </head>
    <style>
        body{
            font-family: Helvetica;
            background-color: #f8f9fa
        }
        h1{
            color: royalblue;
        }
        p:first-of-type{
            font-style: italic;
        }
        #labs{
            border: 2px royalblue dashed;
            padding: 20px
        }
    </style>
    <body>
        <div class="container">
            <p>Done by Ihor Andriienko, IR-11</p>
            <h1 class="text-center">Landing page</h1>
            <div class="w-100 d-flex justify-content-around align-items-center mt-5" id="labs">
                <a class="btn btn-primary" href="lab1.jsp">Lab 1</a>
                <a class="btn btn-primary" href="lab2.jsp">Lab 2</a>
                <a class="btn btn-primary" href="lab3.jsp">Lab 3</a>
                <a class="btn btn-primary" href="lab4.jsp">Lab 4</a>
                <a class="btn btn-primary" href="lab5.jsp">Lab 5</a>
                <a class="btn btn-primary" href="lab6.jsp">Lab 6</a>
                <a class="btn btn-primary" href="lab8.jsp">Lab 8</a>
            </div>
        </div>
    </body>
</html>
