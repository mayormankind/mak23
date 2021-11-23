<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/ad.css">
    <link rel="stylesheet" href="css/search.css">
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="body">    
        <div class="header">
                <h2 id="logo"><span>f</span>cah&pt <span>t</span>tms</h2>
            <span id="span">            
                <a class= "addtimetable" href="admin.php">HOME PAGE</a>
                <a href="admin.php">BACK</a>
                <a href="index.php">LOGOUT</a></li>
            </span>
        </div>
        <div class="caption">
                <h2> Courses on the Timetable </h2>
            <div class="info">
                <table id=subjects>
                <tr>
                    <th width="100">Course Code</th>
                    <th width=350>Course Title</th>
                    <th id= "dept" width=250>Department</th>
                    <th width="40">Level</th>
                    <th id="day" width="100">Day</th>
                    <th width="200">Venue</th>
                    <th width="100">Starting Time</th>
                    <th width="100">Ending Time</th>
                </tr>
                <?php
                    include_once 'searchlogic.php';
                ?>
            </div>
        </div>
    </div>
    
</body>
</html>
</body>
</html>