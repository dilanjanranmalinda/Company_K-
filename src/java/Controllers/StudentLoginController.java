
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
import javax.servlet.http.HttpSession;


@WebServlet(name = "StudentLoginController", urlPatterns = {"/StudentLoginController"})
public class StudentLoginController extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
                pst = con.prepareStatement("SELECT * FROM users WHERE email=? AND password =?");
             
                pst.setString(1, email);
                pst.setString(2, password);
       
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                    HttpSession session = request.getSession();
                    session.setAttribute("UA", email);
                    request.setAttribute("Message", "Hello " + email);
                    response.sendRedirect("student.jsp");
                }else{
                    
                   request.setAttribute("Message", "Hello " + email);
                   request.setAttribute("Message", "Login Failed. Please check your username and password");
                   request.getRequestDispatcher("studentLogin.jsp").forward(request, response);
                   
                   response.sendRedirect("student.jsp");
                }
             
            } catch (SQLException ex) {
                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
                out.println("<h1>Something Went Wrong</h1>");
            }
    }

}
