/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;


import Beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String name = request.getParameter("name");
            String nic = request.getParameter("nic");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            PrintWriter out = response.getWriter();
           
            //out.println(name);
            //out.println(nic);
            //out.println(email);
            //out.println(password);
            
            Connection con;
            try {
                con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_k", "root", "");                
                pst = con.prepareStatement("INSERT INTO users(name, nic, email, password) VALUES(?,?,?,?)");
            
                pst.setString(1, name);
                pst.setString(2, nic);
                pst.setString(3, email);
                pst.setString(4, password);
                pst.executeUpdate();
             
            } catch (SQLException ex) {
                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
                out.println("<h1>Something Went Wrong</h1>");
            }
            out.println("<h1>Your Registration is Success !!!</h1>");
            out.println("<h1>Please Login...</h1>");
            //String redirectURL = "login.jsp";
            //response.sendRedirect(redirectURL);
            
            //request.getRequestDispatcher("login.jsp").include(request, response);
           request.setAttribute("Message", "Hello " + name + " your registration is success. Now " + "you can login to the system.");
           request.getRequestDispatcher("login.jsp").forward(request, response);
    }



}
