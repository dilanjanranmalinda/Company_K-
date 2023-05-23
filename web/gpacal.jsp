<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GPA Calculator</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    
    
</head>
<body>
    <h1>GPA Calculator</h1>
    <form action="GpaController" method="post">
        <label for="course1">Course 1:</label>
        <input type="text" id="course1" name="course1" required>
        <label for="credit1">Credit 1:</label>
        <input type="number" id="credit1" name="credit1" min="0" step="0.5" required>
        <label for="grade1">Grade 1:</label>
        <input type="text" id="grade1" name="grade1" required>
        

        
        <button type="submit"> Calculate GPA </button>
    </form>
    
    <%-- Display GPA result if available --%>
    <c:if test="${not empty gpa}">
        <h2>Your GPA: ${gpa}</h2>
    </c:if>
    
 <img src="images/c.jpg">
 
</body>
</html>
