<%-- 
    Document   : lab3
    Created on : 19.04.2021, 11:40:59
    Author     : Dragon
--%>

<%@page import="IR11.Lab8.AlgorithmDetails"%>
<%@page import="IR11.Lab8.Algorithms"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 8</title>
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
        h1, h2{
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
            <h1 class="text-center">Lab 8</h1>
            <div class="mt-5" id="laba">
                <h2 class="text-left"><b>Постановка задачі:</b> відсортувати масив цілих чисел</h2>
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
