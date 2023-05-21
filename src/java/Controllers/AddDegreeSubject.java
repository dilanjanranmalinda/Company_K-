
package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alen morgen
 */

@WebServlet("/AddDegreeSubject")
public class AddDegreeSubject extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String degreeAction = request.getParameter("degreeAction");

         if (degreeAction != null) {
            if (degreeAction.equals("addDegree")) {
                // Handle adding a degree
                String degreeName = request.getParameter("degreeName");

                // Add code here to perform necessary validation and processing
                // For example, you can store the degree in the database

                // Assuming the degree addition is successful, you can redirect the admin back to the admin dashboard
                response.sendRedirect("admin.jsp");
            } else if (degreeAction.equals("addSubjects")) {
                // Handle adding subjects
                String degreeId = request.getParameter("degreeId");
                String[] subjects = request.getParameterValues("subjects");

                // Add code here to perform necessary validation and processing
                // For example, you can store the subjects in the database, associated with the corresponding degree ID

                // Assuming the subjects addition is successful, you can redirect the admin back to the admin dashboard
                response.sendRedirect("admin.jsp");
            } else if (degreeAction.equals("editDegree")) {
                // Handle editing a degree
                String oldDegreeProgram = request.getParameter("oldDegreeProgram");
                String newDegreeName = request.getParameter("newDegreeName");

                // Add code here to perform necessary validation and processing
                // For example, you can update the degree name in the database for the selected old degree

                // Assuming the degree edit is successful, you can redirect the admin back to the admin dashboard
                response.sendRedirect("admin.jsp");
            }
        }
    }
}