<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Dashboard</title>

    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style>
        /* Add custom styles here */
        body {
            background-image: url("images/2.jpg");
            background-size: cover;
            background-position: center;
       
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
        <a class="navbar-brand" href="#">ABC University Student Dashboard</a>
        <!-- Add any additional navigation links if needed -->
    </nav>

    <div class="container">
        <h1>Welcome, Student!</h1>

        <div class="row">
            <div class="col-md-6">
                <h2>Choose Your Degree Program</h2>
                <form action="SelectDegrees" method="post">
                    <div class="input-group mb-3">
                        <select name="degreeProgram" class="form-select">
                            <option value="degree1">Btech Degree</option>
                            <option value="degree2">BSC Degree</option>
                            <option value="degree3">BBM Degree</option>
                            <option value="degree4">BBA Degree</option>
                        </select>
                        <button type="submit" class="btn btn-primary">Select</button>
                    </div>
                </form>
            </div>

            <div class="col-md-6">
                <h2>Your Selected Degree Program</h2>
                <div id="selectedDegreeProgram">
                    <%-- Display the selected degree program here dynamically --%>
                    <% 
                    //HttpSession session = request.getSession();
                    String selectedDegreeProgram = (String) session.getAttribute("selectedDegreeProgram"); 
                    %>
                    <% if (selectedDegreeProgram != null) { %>
                        <h3><%= selectedDegreeProgram %></h3>
                    <% } else { %>
                        <p>No degree program selected.</p>
                    <% } %>
                </div>
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-12">
                <h2>Subjects</h2>
                <div id="subjects">
                    <%-- Display the subjects for the selected degree program here dynamically --%>
                    <% if (selectedDegreeProgram != null) { %>
                        <% if (selectedDegreeProgram.equals("degree1")) { %>
                            <ul>
                                <li>Advance Web Development</li>
                                <li>Advance Java 01</li>
                                <li>Software Engineering</li>
                                <li>Software Quality Assurance</li>
                            </ul>
                        <% } else if (selectedDegreeProgram.equals("degree2")) { %>
                            <ul>
                                <li>Advance Web Development</li>
                                <li>Advance Java 01</li>
                                <li>Advance Java 02</li>
                                <li>Information Security</li>
                            </ul>
                        <% } else if (selectedDegreeProgram.equals("degree3")) { %>
                            <ul>
                                <li>Financial Management</li>
                                <li>Business Management</li>
                                <li>Accounts and Costing</li>
                                <li>Statistics</li>
                            </ul>
                        <% } else if (selectedDegreeProgram.equals("degree4")) { %>
                            <ul>
                                <li>Business Analytics</li>
                                <li>Human Resource Management</li>
                                <li>Hospitality and Hotel Management</li>
                                <li>Banking Management</li>
                            </ul>
                        <% } %>
                    <% } else { %>
                        <p>No degree program selected.</p>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</body>


     
    </head>

