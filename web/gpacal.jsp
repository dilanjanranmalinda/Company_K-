<!DOCTYPE html>
<html lang = "en">
<head>
     <meta charset="UTF-8">
     <meta name ="viewport" content="width=device-width,initi
     <title>GP calculator</title>
     <Link rel="stylesheet"chef="bootstrap.min.css">
     <link rel="stylesheet" href="styles.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

</head>
<body>
     <div class="wrapper">
        <h1>GPA calculator</h1>
        <div class="form-row">
    </div>
       <table id="table"class="table table-bordered display-none">
     <thead>
        <tr>
           <th>course code</th>
           <th>unit load</th>
           <th>grade</th>
        </tr>
     </thead>
     <tbody id="today">

     </tbody>
     <tfoot id="tfoot">

     </tfoot>
     </table>
     
          <div class="col">
             <input id="course-code" class="form-control" type="text" placeholder="course code">

     </div>
          <div class="col">
             <input id="unit-load" class="form-control" type="number" placeholder="unit load" min="1" max="15">

     </div>
          <div class="col">
             <select id="grade" class="form-control">
                <option value="">Grade</option>
                <option value="5">A</option>
                <option value="4">B</option>
                <option value="3">C</option>
                <option value="2">D</option>
                <option value="1">E</option>
                <option value="0">F</option>
    </select>
     </div>
          <div class="col">
               <input id="add" class="btn btn-primary" type="button" value="Add">
</div>

     <script src="main.js"></script>

</body>
</html>
       