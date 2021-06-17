
<%@page import="IR11.Lab6.Progression"%>
<%@page import="IR11.Lab6.BinaryTreePrinter"%>
<%@page import="IR11.Lab6.BinaryTree"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6</title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 6</h1>
            <div id="laba">
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
