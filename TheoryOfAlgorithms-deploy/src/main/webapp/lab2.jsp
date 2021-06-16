<%-- 
    Document   : lab2
    Created on : 8 апр. 2021 г., 19:21:58
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 2</title>
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
        #laba{
            border: 2px royalblue dashed;
            padding: 20px
        }
        input{
            max-width: 200px;
        }
    </style>
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Lab 2</h1>
            <div class="mt-5" id="laba">
                <form action="./lab2" method="post" class="form-inline">
                    <label for="x">Enter x</label>
                    <div class="input-group">
                        <input  class="form-control" id="x" type="text" name="x" placeholder="##.###"/>
                        <input class="btn btn-success" type="submit" value="Submit"/>
                    </div>
                    <p class="mt-3 mb-0">Result: <%=request.getAttribute("result")%></p>
                </form>
            </div>
        </div>
    </body>
</html>
