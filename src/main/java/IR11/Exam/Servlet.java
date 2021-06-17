package IR11.Exam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String x = request.getParameter("x");
        float param = Float.parseFloat(x);
        float result = workingAlgorhythm.Function(param);
        request.setAttribute("result", result);
        request.getRequestDispatcher("exam.jsp").forward(request, response);
    }

}
