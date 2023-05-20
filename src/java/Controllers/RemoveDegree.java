
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
 * 
 */
@WebServlet(name = "RemoveDegree", urlPatterns = {"/RemoveDegree"})
public class RemoveDegree extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the degree ID from the request parameters
        String degreeId = request.getParameter("degreeId");

        // Perform the logic to remove the degree from the database
        // ...

        // Redirect to the admin page or show a success message
        // ...
    }
}
