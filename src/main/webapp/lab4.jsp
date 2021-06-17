
<%@page import="IR11.Lab4.TextProcessor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 4</title>
    </head>
    <body>
        <div>
            <a href="index.jsp">Back to landing page</a>
            <h1>Lab 4</h1>
            <div id="laba">
                <%! TextProcessor textProcessor = new TextProcessor("Internet of Things (IoT)"
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
                <p><b>Text:</b> <%= textProcessor.GetText()%></p>
                <p><b>Text:</b> <%= textProcessor.GetClearedText()%></p>
                <p><b>Number of words:</b> <%= textProcessor.GetWordsNumber()%></p>
                <p><b>Number of unique words:</b> <%= textProcessor.GetUniqueWordsNumber()%></p>
                <p><b>Most popular words(4):</b> <%= textProcessor.GetFirstNMostPopularWords(4)%></p>
                <p><b>Number of words that do not contain letter (d):</b>
                    <%= textProcessor.GetNumberOfWordsThatNotContain('d')%></p>
                <p><b>Number of words that contain 3 similar letters (3):</b>
                    <%= textProcessor.GetNumberOfWordsThatContainSimilarLetters(3)%></p>
                <p><b>Most popular sequences (4):</b>
                    <%= textProcessor.MostPopularSequences(4, 3)%></p>
            </div>
        </div>
    </body>
</html>
