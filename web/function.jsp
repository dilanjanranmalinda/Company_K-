<%@page import="Beans.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Details</title>
    <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Student Details</h1>
        <table id="tbl-student" class="table-responsive table-bordered text-center" cellpadding="0" width="100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>NIC</th>
                    <th>Email</th>
                    <th>Degree</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% 
                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_k", "root", "");
                    pst = con.prepareStatement("SELECT * FROM users");
                    rs = pst.executeQuery();

                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String nic = rs.getString("nic");
                        String email = rs.getString("email");
                        String degree = rs.getString("degree");
                %>
                <tr>
                    <td><%= name %></td>
                    <td><%= nic %></td>
                    <td><%= email %></td>
                    <td><%= degree %></td>
                    <td><a href="update.jsp?id=<%= id %>" class="btn btn-primary">Edit</a></td>
                    <td>
                        <form action="DeleteServlet" method="post">
                            <input type="hidden" name="id" value="<%= id %>">
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this record?')">Delete</button>
                        </form>
                    </td>
                </tr>
                <% 
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                } finally {
                    if (rs != null) {
                        try {
                            rs.close();
                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }
                    }
                    if (pst != null) {
                        try {
                            pst.close();
                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }
                    }
                    if (con != null) {
                        try {
                            con.close();
                        } catch (SQLException ex) {
                            ex.printStackTrace();
                        }
                    }
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
