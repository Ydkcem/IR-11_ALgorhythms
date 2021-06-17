
<%@page import="IR11.Lab5.Part1"%>
<%@page import="IR11.Lab5.Part2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 5</h1>
            <div id="laba">
                <%! Part1 part1 = new Part1("Internet of Things (IoT)"
                        + " is a new paradigm that has changed the traditional way of living "
                        + "into a high tech life style. Smart city, smart homes, pollution control, "
                        + "energy saving, smart transportation, smart industries are such transformations"
                        + " due to IoT. A lot of crucial research studies and investigations have been done"
                        + " in order to enhance the technology through IoT. However, there are still a lot of"
                        + " challenges and issues that need to be addressed to achieve the full potential of IoT. "
                        + "These challenges and issues must be considered from various aspects of IoT such as "
                        + "applications, challenges, enabling technologies, social and environmental impacts etc."
                        + " The main goal of this review article is to provide a detailed discussion from both "
                        + "technological and social perspective. The article discusses different challenges and "
                        + "key issues of IoT, architecture and important application domains. Also, the article "
                        + "bring into light the existing literature and illustrated their contribution in different "
                        + "aspects of IoT. Moreover, the importance of big data and its analysis with respect to IoT "
                        + "has been discussed. This article would help the readers and researcher to understand the IoT "
                        + "and its applicability to the real world.");%>
                <p><b>Text:</b> <%= part1.GetText()%></p>
                <form action="./lab5" method="post">
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