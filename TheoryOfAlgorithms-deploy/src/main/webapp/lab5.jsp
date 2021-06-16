<%-- 
    Document   : lab5
    Created on : 27.04.2021, 14:57:43
    Author     : Admin
--%>

<%@page import="IR11.Lab5.Part1"%>
<%@page import="IR11.Lab5.Part2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
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
        .find{
            background-color: yellow;
            text-decoration: underline;
        }
    </style>
    <body>
        <div class="container">
            <a class="btn btn-secondary" href="index.jsp">Back to landing page</a>
            <h1 class="text-center">Lab 5</h1>
            <div class="mt-5" id="laba">
                <%! Part1 part1 = new Part1("Formula One"
                    + " (also known as Formula 1 or F1) is the highest class of"
                    + " international auto racing for single-seater formula racing"
                    + " cars sanctioned by the Fédération Internationale de l'Automobile"
                    + " (FIA). The World Drivers' Championship, which became the FIA Formula"
                    + " One World Championship in 1981, has been one of the premier forms of"
                    + " racing around the world since its inaugural season in 1950. The word"
                    + " formula in the name refers to the set of rules to which all participants'"
                    + " cars must conform. A Formula One season consists of a series of races, known"
                    + " as Grands Prix (French for 'grand prizes' or 'great prizes'), which take"
                    + " place worldwide on purpose-built circuits and closed public roads. The"
                    + " results of each race are evaluated using a points system to determine"
                    + " two annual World Championships: one for drivers, the other for constructors."
                    + " Each driver must hold a valid Super Licence, the highest class of racing"
                    + " licence issued by the FIA. The races must run on tracks graded \"1\" (formerly"
                    + " \"A\"), the highest grade-rating issued by the FIA. Most events occur in rural"
                    + " locations on purpose-built tracks, but several events take place on city streets."
                    + " Formula One cars are the fastest regulated road-course racing cars in"
                    + " the world, owing to very high cornering speeds achieved through the"
                    + " generation of large amounts of aerodynamic downforce. The cars underwent"
                    + " major changes in 2017, allowing wider front and rear wings, and wider"
                    + " tyres, resulting in peak cornering forces near 6.5 lateral g and top"
                    + " speeds of up to over 325 km/h (200 mph). As of 2019, the hybrid engines"
                    + " are limited in performance to a maximum of 15,000 rpm; the cars are"
                    + " very dependent on electronics and aerodynamics, suspension and tyres."
                    + " Traction control, launch control, and automatic shifting, plus other"
                    + " electronic driving aids, have been banned since 2004 and 2008, respectively.");%>
                <p><b>Text:</b> <%= part1.GetText()%></p>
                <form action="./lab5" method="post" class="form-inline">
                    <label for="x"><b>Enter word to search for: </b></label>
                    <div class="input-group">
                        <input  class="form-control" id="find" type="text" name="find"/>
                        <input class="btn btn-success" type="submit" value="Submit"/>
                    </div>
                    <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
                </form>
                <p><b>Most popular words:</b> <%= part1.GetMostPopularWords()%></p>
                <p><b>Most popular sequences (4):</b>
                    <%= part1.MostPopularSequences(4)%></p>
                <%! Part2 part2 = new Part2(20); %>
                <% part2.InitList(); %>
                <p><b>List: </b><br/> <%= part2.DisplayList()%></p>
                <%! String find = "model #8"; %>
                <p><b>Index of element with value</b> <%= find %>: <%= part2.IndexOf(find)%></p>
                <% part2.SortByStringField();%>
                <p><b>Sorted by string field: </b><br/> <%= part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= part2.IndexOf(find)%></p>
                <% part2.SortByShortField();%>
                <p><b>Sorted by short field: </b><br/> <%= part2.DisplayList()%></p>
                <p><b>Index of element with value </b><%= find %>: <%= part2.IndexOf(find)%></p>
            </div>
        </div>
    </body>
</html>