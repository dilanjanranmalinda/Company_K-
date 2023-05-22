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
    <title> Admin Page </title>

    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
     <style>
        /* Add custom styles here */
        body {
            background-image: url("images/3.jpg");
            background-size: cover;
            background-position: center;
       
        }
        
        .container {
            margin-top: 80px;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
        }
        
        .card-header {
            background-color: #007bff;
            color: #ffffff;
        }
        
        .card-body {
            padding: 20px;
        }
        
        .card-title {
            color: #000000;
        }
        
        .form-label {
            font-weight: bold;
        }
        
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
    </style>
</head>

<body>
 

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">ABC University K Admin Panel</a>
 
         <a href="adminRegister.jsp"class="btn btn-warming"> Admin register </a>
    </nav>
    
    <div class="container">
        <div class="row">
            <div class="card text-dark mb-3">
                <div class="card-header">
                    <center><h1>Welcome to Admin Panel</h1></center>
                </div>
                
                
                
                <div class="card-body">
                    <!-- Add User -->
                    <h2>Add User</h2>
                    
                        <a href = "register.jsp" class="btn btn-primary">Click Student Register</a>
           
                    
                   
                    <h2>Remove User and  Edit </h2>
                    <a href = "function.jsp" class="btn btn-primary">Click Remove Student and  Edit</a>
                    
                    <!-- Edit User -->
                    <h2>Edit User</h2>
                    <form action="EditUser" method="post">
                        <div class="mb-3">
                            <input type="text" class="form-control" name="userId" placeholder="User ID" required>
                        </div>
                        <div class="mb-3">
                            <input type="text" class="form-control" name="username" placeholder="New Username" required>
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" name="password" placeholder="New Password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Edit User</button>
                    </form>
                </div>
            </div>
            
            <div class="card text-dark mb-3">
                <div class="card-body">
                    <!-- Add Degree and Subjects -->
                    <h2>Add Degree and Subjects</h2>
                    <form action="AddDegreeSubject" method="post">
                        <input type="hidden" name="degreeAction" value="addDegree">
                        <div class="mb-3">
                            <label for="degreeName" class="form-label">Degree Name</label>
                            <input type="text" class="form-control" id="degreeName" name="degreeName" placeholder="Enter Degree Name" required>
                        </div>
                        <div class="mb-3">
                            <label for="degreeId" class="form-label">Degree ID</label>
                            <input type="text" class="form-control" id="degreeId" name="degreeId" placeholder="Enter Degree ID" required>
                        </div>
                        <div class="mb-3">
                            <label for="subjects" class="form-label">Subjects</label>
                            <textarea class="form-control" id="subjects" name="subjects" placeholder="Enter Subjects (comma-separated)" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Degree and Subjects</button>
                    </form>
                    
                    <!-- Remove Degree -->
                    <h2>Remove Degree</h2>
                    <form action="RemoveDegree" method="post">
                        <div class="mb-3">
                            <input type="text" class="form-control" name="degreeId" placeholder="Degree ID" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Remove Degree</button>
                    </form>
                    
                    <!-- Edit Degree -->
                    <h2>Edit Degree</h2>
                    <form action="AdminServlet" method="post">
                        <input type="hidden" name="degreeAction" value="editDegree">
                        <div class="mb-3">
                            <label for="oldDegreeProgram" class="form-label">Select Old Degree</label>
                            <select name="oldDegreeProgram" class="form-select">
                                <option value="degree1">Btech Degree</option>
                                <option value="degree2">BSC Degree</option>
                                <option value="degree3">BBM Degree</option>
                                <option value="degree4">BBA Degree</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="newDegreeName" class="form-label">New Degree Name</label>
                            <input type="text" class="form-control" id="newDegreeName" name="newDegreeName" placeholder="Enter New Degree Name" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Edit Degree</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <a href="logout.jsp">Logout</a>

</body>

</html>

