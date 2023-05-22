/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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

/**
 *
 * @author Alen morgen
 */
@WebServlet(name = "usercontroller", urlPatterns = {"/usercontroller"})
public class usercontroller extends HttpServlet {

   Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String mail = request.getParameter("email");
        String pwd = request.getParameter("password");
        
        PrintWriter out = response.getWriter();
        
       try{
       con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_k","root","");
       pst = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
       
       pst.setString(1, mail);
       pst.setString(2, pwd);
       ResultSet rs = pst.executeQuery();
       
       if(rs.next()){
           
           String role = rs.getString("role");
           
           if("2".equals(role)){
           HttpSession session = request.getSession();
       session.setAttribute("active",mail);
       request.getRequestDispatcher("admin.jsp").forward(request, response);
           
           }else{
       
       HttpSession session = request.getSession();
       session.setAttribute("active",mail);
       request.getRequestDispatcher("student.jsp").forward(request, response);
           }
       }else{
       out.print("s");
       }
       
       } catch (SQLException ex) {
           Logger.getLogger(usercontroller.class.getName()).log(Level.SEVERE, null, ex);
           out.print(ex);
       }
        
    }

    

}
