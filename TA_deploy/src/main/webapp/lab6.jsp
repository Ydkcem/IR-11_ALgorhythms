<%-- 
    Document   : lab3
    Created on : 19.04.2021, 11:40:59
    Author     : Dragon
--%>

<%@page import="IR11.Lab6.Progression"%>
<%@page import="IR11.Lab6.BinaryTreePrinter"%>
<%@page import="IR11.Lab6.BinaryTree"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6</title>
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
            <h1 class="text-center">Lab 6</h1>
            <div class="mt-5" id="laba">
                <p>Result:<br> <%= Progression.GetSequence(7, 2, 2)%></p>
                <%! BinaryTree tree = new BinaryTree();%>
                <%
                    tree.add(7);
                    tree.add(6);
                    tree.add(14);
                    tree.add(12);
                    tree.add(1);
                    tree.add(4);
                    tree.add(13);
                    tree.add(16);
                %>
                <pre>
                <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
                </pre>
                <%tree.mirrorTree(tree.getRoot()); %>
                <pre>
                <p>Result:<br> <%= BinaryTreePrinter.printNode(tree.getRoot())%></p>
                </pre>
            </div>
        </div>
    </body>
</html>
