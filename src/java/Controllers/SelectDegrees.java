package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SelectDegrees", urlPatterns = {"/SelectDegrees"})
public class SelectDegrees extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String degreeProgram = request.getParameter("degreeProgram");
        
        // Store the selected degree program in the session
        HttpSession session = request.getSession();
        session.setAttribute("selectedDegreeProgram", degreeProgram);
        
        // Redirect back to the students.jsp page
        response.sendRedirect("student.jsp");
    }
}
