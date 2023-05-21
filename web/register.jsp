
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
 
    <title>Register</title>

    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">

    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>


<body>

    <div class="container" style="margin-top:80px;background-size:cover;background-position:center;padding-left:350px;padding-top:0px;padding-right:350px;padding-bottom:20px">
        
        <div class="row">
            
            <div class="card text-dark mb-3" style="background-color:rgba(0, 191, 255, 0.2)">

                <div class="card-header">
                    <center><b><h4>Register</h4></b></center>
                </div>

                <div class="card-body">

                    <form method="POST" action="RegisterController">

                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Name</label>
                          <input type="Name" class="form-control" id="exampleInputName" name="name" aria-describedby="namelHelp" placeholder="Enter Your Name" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">NIC Number</label>
                            <input type="NIC" class="form-control" id="exampleInputNIC1" name="nic" aria-describedby="niclHelp" placeholder="Enter Your NIC Number" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email Address</label>
                            <input type="email" class="form-control" id="exampleInputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter Your Email Adress" required>
                          </div>

                        <div class="mb-3">
                            <label for="exampleInputdegree" class="form-label">Your Degree Program</label>
                            <input type="degree" class="form-control" id="exampleInputDegree" name="degree" aria-describedby="degree" placeholder="Enter Your Degree" required>
                          </div>
    
                            
                            
                            
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Enter Your Password" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Confirm Your Password" required>
                        </div>

                        <div class="mb-3 form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Terms & Conditions</label>
                        </div>

                        <button type="submit" class="btn btn-primary">Register</button>
                        <button type="button" class="btn btn-dark">Reset</button>

                        <p><center font = "bold">Already have an account? <a href = "login.jsp">Login</a></center></p>
                    
                      </form>

                </div>

            </div>       
        
        </div>

    </div>
 
</body>

</html>