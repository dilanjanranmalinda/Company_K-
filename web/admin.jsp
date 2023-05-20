<%-- 
    Document   : admin.jsp
    Created on : May 20, 2023, 5:11:14 PM
    Author     : Alen morgen
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Page</title>

    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">ABC University K Admin Panel</a>
        <!-- Add any additional navigation links if needed -->
    </nav>
    
 
    
    <div class="container" style="margin-top:80px;background-size:cover;background-position:center;padding-left:400px;padding-top:50px;padding-right:400px;padding-bottom:20px">
       
        <div class="row">
            
            <div class="card text-dark mb-3" style="background-color:rgba(0, 191, 255, 0.2)">

                <div class="card-header">
                    <center><b><h1> Welcome to Admin Panel</h1></b></center>
                </div>

                <div class="card-body">
     

        <!-- Add User -->
        <h2>Add User</h2>
        <form action="AddUser" method="post">
            <!-- Add user form fields -->
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" class="btn btn-primary">Add User</button>
        </form>

        <!-- Remove User -->
        <h2>Remove User</h2>
        <form action="RemoveUser" method="post">
            <!-- Remove user form fields -->
            <input type="text" name="userId" placeholder="User ID" required>
            <button type="submit" class="btn btn-primary">Remove User</button>
        </form>

        <!-- Edit User -->
        <h2>Edit User</h2>
        <form action="EditUser" method="post">
            <!-- Edit user form fields -->
            <input type="text" name="userId" placeholder="User ID" required>
            <input type="text" name="username" placeholder="New Username" required>
            <input type="password" name="password" placeholder="New Password" required>
            <button type="submit" class="btn btn-primary">Edit User</button>
        </form>
        
                </div>
                </div>
            
                <div class="card text-dark mb-3" style="background-color:rgba(0, 191, 255, 0.2)">
                    
<div class="card-body"style>
    
        <!-- Add Degree -->
        <h2>Add Degree</h2>
        <form action="AddDegree" method="post">
            <!-- Add degree form fields -->
            <input type="text" name="degreeName" placeholder="Degree Name" required>
          
            <button type="submit" class="btn btn-primary">Add Degree</button>
        </form>

        <!-- Remove Degree -->
        <h2>Remove Degree</h2>
        <form action="RemoveDegree" method="post">
            <!-- Remove degree form fields -->
            <input type="text" name="degreeId" placeholder="Degree ID" required>
            <button type="submit"class="btn btn-primary">Remove Degree</button>
        </form>

        <!-- Edit Degree -->
        <h2>Edit Degree</h2>
        <form action="EditDegree" method="post">
            <!-- Edit degree form fields -->
            <input type="text" name="degreeId" placeholder="Degree ID" required>
            <input type="text" name="degreeName" placeholder="New Degree Name" required>
            <button type="submit" class="btn btn-primary">Edit Degree</button>
        </form>
        </div>
                </div>
            </div>
    </div>
    
   <a href="logout.jsp">logout</a>

</body>
<%
        if(session.getAttribute("UN")== null){
            response.sendRedirect("admin.jsp");
        }
     %>
</html>

