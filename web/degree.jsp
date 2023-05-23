
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
 
    <title> Degree Register</title>

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

                    <form method="POST" action="DegreeController">

                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Name</label>
                          <input type="name" class="form-control" id="exampleInputName" name="name" aria-describedby="namelHelp" placeholder="Enter Degree Name" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Code</label>
                            <input type="code" class="form-control" id="exampleInputNIC1" name="code" aria-describedby="niclHelp" placeholder="Enter Degree code" required>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label"> Subject one </label>
                            <input type="subjectone" class="form-control" id="exampleInputEmail" name="subjectone" aria-describedby="emailHelp" placeholder="Enter subject one" required>
                          </div>

                        <div class="mb-3">
                            <label for="exampleInputdegree" class="form-label">Subject two</label>
                            <input type="subjecttwo" class="form-control" id="exampleInputDegree" name="subjecttwo" aria-describedby="degree" placeholder="Enter subject two" required>
                          </div>
    
                           <div class="mb-3">
                            <label for="exampleInputdegree" class="form-label">Subject three</label>
                            <input type="subjectthree" class="form-control" id="exampleInputDegree" name="subjectthree" aria-describedby="degree" placeholder="Enter subject three" required>
                          </div>  
                            
                         <div class="mb-3">
                            <label for="exampleInputdegree" class="form-label">Subject four </label>
                            <input type="subjectfour " class="form-control" id="exampleInputDegree" name="subjectfour" aria-describedby="degree" placeholder="Enter subject four " required>
                          </div>
                            
                   

                        <div class="mb-3 form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="button" class="btn btn-dark">Reset</button>

                        
                    
                      </form>

                </div>

            </div>       
        
        </div>

    </div>
 
</body>

</html>