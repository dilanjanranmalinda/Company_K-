<%--
    Document   : contact.jsp
    Created on : May 22, 2023, 9:07:13 AM
    Author     : Alen morgen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>

<script type="text/javascript">
    WebFontConfig = {
        google: { families: [ 'Oleo+Script:700','Oxygen:700','Roboto:700','Oxygen'] }
    };
    (function() {
        var wf = document.createElement('script');
        wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
    })();
</script>

<body class="about">
    <header id="ttr_header">
        <div id="ttr_header_inner">
            <div class="ttr_headershape01">
                <div class="html_content">
                    <p style="text-align:Center;">
                        <span style="font-family:'Oleo Script','Arial';font-weight:700;font-size:5.571em;color:rgba(1,161,133,1);">ABC University K </span>
                    </p>
                </div>
            </div>
        </div>
    </header>
    
    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0 bg-primary bg-gradient text-white">
        <div class="container px-lg-5">
            <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                <div class="m-4 m-lg-5">
                    <h1 class="display-5 fw-bold">Welcome to University</h1>
                    <p class="fs-4">We truly value our students and will do our utmost to care for their efficiency, ability, and performance. We are committed to providing quality education to our students in a favorable environment. Our track record of commendable academic results at an affordable fee demonstrates our dedication. We aim to equip our students with the necessary competencies for a satisfactory future.</p>
                </div>
            </div>
        </div>
    </div>
    
   
   
    <button><a href="index.jsp" class="btn btn-danger">Back</a></button>
</body>
</html>
