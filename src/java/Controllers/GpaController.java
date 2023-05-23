package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GpaController")
public class GpaController extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the course details from the request parameters
        String course1 = request.getParameter("course1");
        double credit1 = Double.parseDouble(request.getParameter("credit1"));
        String grade1 = request.getParameter("grade1");
        
        // Repeat the above steps for additional courses
        
        // Calculate GPA using your desired logic
        double gpa = calculateGpa(credit1, grade1);
        
        // Store the GPA in request attribute
        request.setAttribute("gpa", gpa);
        
        // Forward the request to the JSP file for displaying the result
        request.getRequestDispatcher("gpacal.jsp").forward(request, response);
    }
    
    private double calculateGpa(double credit, String grade) {
        // Implement your GPA calculation logic here
        
        // Example logic:
        switch (grade) {
            case "A":
                return 4.0;
            case "A-":
                return 3.70;
            case "B+": 
                return 3.30;
             case "B": 
                return 3.00;
          case "B-":
                return 2.70;
            case "C+": 
                return 2.30;
             case "C": 
                return 2.00;
                  case "C-":
                return 1.70;
            case "D+": 
                return 1.30;
             case "D": 
                return 1.00;
            default:
                return 0.0;
        }
    }
}
