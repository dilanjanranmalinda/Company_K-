/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

@WebServlet(name = "AddDegree", urlPatterns = {"/AddDegree"})
public class AddDegree extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the degree details from the request parameters
        String degreeName = request.getParameter("degreeName");

        // Perform the logic to add the degree to the database
        // ...

        // Redirect to the admin page or show a success message
        // ...
    }
}

