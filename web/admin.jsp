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
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

    
     
</head>

<body>
 

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">ABC University K Admin Panel</a>
 
        <
         <div class="navbar-collapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="btn btn-secondary" href="adminRegister.jsp">Admin register </a>
          </li>
        </ul>
      </div>
        
    </nav>
    
   
</body>
    

    <br>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/28.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/10.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/6.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
        <br>
    <br> 

    
  <div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-3 col-md-6 mb-4 card-margin-2">
            <div class="card bg-warning text-white">
                <div class="card-body">Add Student</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="register.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                 
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4 card-margin-3">
            <div class="card bg-success text-white">
                <div class="card-body">Delete Student</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="function.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4 card-margin-4">
            <div class="card bg-danger text-white">
                <div class="card-body">Edit Student</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="function.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-3 col-md-6 mb-4 card-margin-2">
            <div class="card bg-warning text-white">
                <div class="card-body">Add Degree And Subject</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="degree.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                 
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4 card-margin-3">
            <div class="card bg-success text-white">
                <div class="card-body">Delete Student</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="function.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6 mb-4 card-margin-4">
            <div class="card bg-danger text-white">
                <div class="card-body">Edit Student</div>
                <div class="card-footer d-flex align-items-center justify-content-between">
                    <a class="small text-white stretched-link" href="function.jsp">View Details</a>
                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                </div>
            </div>
        </div>
    </div>
</div>


</html>

