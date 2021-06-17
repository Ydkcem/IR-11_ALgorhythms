<%@page import="IR11.Exam.AlgorhythmRes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Лаби + Екзамен</title>
    </head>
    <style>
        .center{
            display: flex;
            justify-content: center;
            
        }
    </style>
    <body>
        <p class="center">Екзамен з Теорії Алгоритмів, студента ІР-11, Ященко Данила</p>
        <form action="./formula" method="post" >
            <label class="center" for="x"><b>Введите x:</b></label>
            <div class="center">
                <input id="x" type="text" name="x"/>
                <input type="submit" value="Submit"/>
            </div>
            <p class="center"><b></b><%=request.getAttribute("result")%></p>
        </form>
        <%! AlgorhythmRes fr = new AlgorhythmRes(10); %>
        <p class="center">Args: <%= fr.resArguments() %> </p>
        <p class="center">Results:<%= fr.Function() %></p>
        </form>
    </body>
</html>
