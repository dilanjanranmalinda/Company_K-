
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

@WebServlet(name = "EditUser", urlPatterns = {"/EditUser"})
public class EditUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the updated user details from the request parameters
        String userId = request.getParameter("userId");
        String updatedUsername = request.getParameter("username");
        String updatedPassword = request.getParameter("password");

        // Perform the logic to edit the user in the database
        // ...

        // Redirect to the admin page or show a success message
        // ...
    }
}
