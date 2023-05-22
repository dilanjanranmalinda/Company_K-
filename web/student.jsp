<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Dashboard</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

  <style>
    .carousel-item {
      height: 500px;
    }
  </style>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="#">University Name</a>
      <div class="navbar-collapse">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="btn btn-primary" href="#">Button 1</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-secondary" href="#">Button 2</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Carousel wrapper -->
  <div id="carouselBasicExample" class="carousel slide carousel-fade" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carouselBasicExample" data-slide-to="0" class="active"></li>
      <li data-target="#carouselBasicExample" data-slide-to="1"></li>
      <li data-target="#carouselBasicExample" data-slide-to="2"></li>
    </ol>

    <!-- Inner -->
    <div class="carousel-inner">
      <!-- Single item -->
      <div class="carousel-item active">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/Slides/img%20(15).webp" class="d-block w-100"
          alt="Slide 1">
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div>
      </div>

              <div id="ImageCarouselCSS" class="carousel slide" data-ride="carousel">


  <ol class="carousel-indicators">


    <li data-target="#ImageCarouselCSS" data-slide-to="0" class="active"></li>


    <li data-target="#ImageCarouselCSS" data-slide-to="1"></li>


    <li data-target="#ImageCarouselCSS" data-slide-to="2"></li>


  </ol>


  <div class="carousel-inner">


    <div class="carousel-item active">


      <img src="https://source.unsplash.com/fk4tiMlDFF0/900x600/" class="d-block w-100" alt="tiniest puppy">


    </div>


    <div class="carousel-item">


      <img src="https://source.unsplash.com/TzjMd7i5WQI/900x600/" class="d-block w-100" alt="tiny puppy">


    </div>


    <div class="carousel-item">


      <img src="https://source.unsplash.com/-Go4DH2pZbc/900x600/" class="d-block w-100" alt="least tiny but still tiny puppy">


    </div>


  </div>


</div>

  <!-- Degrees and Subjects -->
  <div class="container mt-5">
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Degree 1</h5>
            <p class="card-text">Description of Degree 1.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Degree 2</h5>
            <p class="card-text">Description of Degree 2.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Degree 3</h5>
            <p class="card-text">Description of Degree 3.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>

  <button><a href="gpacal.jsp" class="btn btn-danger">GPA calculator</a></button>
</body>

</html>
