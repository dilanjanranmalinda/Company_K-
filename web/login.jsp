
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
 
    <title> Login </title>

    <!-- Link bootstrap ACS -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

    </head>
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

<body>
    
     <%
          String message = (String) request.getAttribute("Message");
          if(message != null){
        %>
        <h3><%=message %></h3>
        <%
           } 
         %>

    <div class="container" style="margin-top:80px;background-size:cover;background-position:center;padding-left:400px;padding-top:50px;padding-right:400px;padding-bottom:20px">
       
        <div class="row">
            
            <div class="card text-dark mb-3" style="background-color:rgba(0, 191, 255, 0.2)">

                <div class="card-header">
                    <center><b><h4>Login </h4></b></center>
                </div>

                <div class="card-body">

                    <form method="POST" action="usercontroller">

                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Username</label>
                          <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Username">
                        </div>

                        <div class="mb-3">
                          <label for="exampleInputPassword1" class="form-label">Password</label>
                          <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Enter Your Password" aria-placeholder="Enter Your Password">
                        </div>

                        <div class="mb-3 form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Remember Username</label>
                        </div>

                        <button type="submit" class="btn btn-primary">Login </button>
                        
                        <button type="button" class="btn btn-outline-dark">Reset</button>

                        <p><center>Don't have an account? <a href = "register.jsp" class="btn btn-primary">Sign up</a></center></p>

                      </form>

                </div>

            </div>       
        
        </div>

    </div>


 
</body>

</html>
