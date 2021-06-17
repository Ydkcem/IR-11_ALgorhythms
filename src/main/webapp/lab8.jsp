
<%@page import="IR11.Lab8.AlgorithmDetails"%>
<%@page import="IR11.Lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 8</title>
        
    </head>
    <body>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 8</h1>
            <div>
                <h2><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
                <p><b>Вихідні дані:</b><br>Кількість елементів: 30000</p>
                <%! Algorithms algorithms = new Algorithms(30000);%>
                <hr>
                <% AlgorithmDetails bubbleSortDetails = algorithms.bubbleSort(); %>
                <p><b>Назва алгоритму: </b>Bubble Sort</p>
                <p><b>Час роботи:</b>  <%= bubbleSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= bubbleSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= bubbleSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
                <hr>
                <% AlgorithmDetails selectionSortDetails = algorithms.SelecionSort(); %>
                <p><b>Назва алгоритму: </b>Selection Sort</p>
                <p><b>Час роботи:</b>  <%= selectionSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= selectionSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= selectionSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
                <hr>
                <% AlgorithmDetails quickSortDetails = algorithms.QuickSort(); %>
                <p><b>Назва алгоритму: </b>Quick Sort</p>
                <p><b>Час роботи:</b>  <%= quickSortDetails.getTime() %>ms</p>
                <p><b>Кількість порівнянь </b><%= quickSortDetails.getComparisons() %></p>
                <p><b>Кількість перестановок </b><%= quickSortDetails.getSubstitutions() %></p>
                <p><b>Складність(Big-O): O^2</b></p>
            </div>
        </div>
    </body>
</html>
