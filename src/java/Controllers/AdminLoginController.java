
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


@WebServlet(name = "AdminLoginController", urlPatterns = {"/AdminLoginController"})
public class AdminLoginController extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();

        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_k", "root", "");
            pst = con.prepareStatement("SELECT * FROM admin_table WHERE email=? AND password =?");

            pst.setString(1, email);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("UN", email);
                request.setAttribute("Message", "Hello " + email);
                response.sendRedirect("adminHome.jsp");
            } else {
                request.setAttribute("Message", "Login Failed. Please check your username and password");
                request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AdminLoginController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong</h1>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
    }
}
