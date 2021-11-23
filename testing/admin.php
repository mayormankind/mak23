<?php
    include 'conn/connection.php';
    if(isset($_GET['delete'])){
        $course=$_GET['delete'];
        $query="DELETE FROM courses WHERE course_code='$course'";
        mysqli_query($connection,$query);
        header('location:admin.php?course_deleted');
    }
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Page</title>
    <link rel="stylesheet" href="css/ad.css">
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="body">    
    <div class="header">
                <h2 id="logo"><span>f</span>cah&pt <span>t</span>tms</h2>
            <span id="span">            
                <a class= "addtimetable" href="#">ADD TIMETABLE</a>
                <a href="preview.php">GENERATE TIMETABLE</a>
                <a class= "newtimetable" href="#">NEW SEMESTER</a>
                <a class= "notif" href="notification.php">NOTIFICATION</a>
                <a href="index.php">LOGOUT</a></li>
            </span>
        </div>
        <div align="center" class="searchform">
            <form action="search.php" method="post">
                <input type="text" name="search" id="" placeholder= "Search">
                <button name="submit" type="submit">Search</button>
            </form>
        </div>
        <div class="info">
            <table id=subjects>
                <caption><strong> Courses on the Timetable</strong></caption>
                <tr>
                    <th width="100">Course Code</th>
                    <th width=350>Course Title</th>
                    <th id= "dept" width=250>Department</th>
                    <th width="40">Level</th>
                    <th id="day" width="100">Day</th>
                    <th width="200">Venue</th>
                    <th width="100">Starting Time</th>
                    <th width="100">Ending Time</th>
                    <th width="100">Action</th>
                </tr>
    <?php
        include_once 'conn/connection.php';
        $action ="SELECT * FROM courses";//retrieves all records in the table "courses"
        $sub = mysqli_query($connection,$action);
        while ($row = mysqli_fetch_assoc($sub)) {
            echo "<tr>
                    <td>{$row['course_code']}</td>
                    <td>{$row['course_title']}</td>
                    <td>{$row['dept']}</td>
                    <td>{$row['level']}</td>
                    <td>{$row['day']}</td>
                    <td>{$row['venue']}</td>
                    <td>{$row['start']}</td>
                    <td>{$row['end']}</td>
                    <td>     
                    <button id='delete'><a href='admin.php?delete=".$row['course_code']."'>Delete</a></button></td>
                </tr>";
        }
        ?>
        </div>        
        <div class="addcontainer">            
            <div class="add_pg">
                <div class="add_header">
                    <span class="close">&times</span>
                    <h2 id="addHead">Add Courses</h2>
                </div>
                <div class="form_conn">
                    <form action="conn/submit.php" method="POST">
                    <div class="form">
                        <label class="label" for="course_code">Course Code</label>
                        <input type="text" name="cc" id="" placeholder="Course code">
                    </div>
                    <div class="form">
                        <label for="course_title" class="label">Course Title</label>
                        <input type="text" name="ct" id="" placeholder="Course Title">
                    </div>
                    <div class="form">
                        <label class="label">Department</label>
                        <select name="dept" id="">
                            <option value="0" selected disabled>Select Department</option>
                            <option value="comp">Computer Science</option>
                            <option value="stat">Statistics</option>
                            <option value="ahpt">Animal Health And Production Technology</option>
                            <option value="vlt">Veterinary Laboratory Technology</option>
                            <option value="slt">Science Laboratory Technology</option>
                            <option value="fish">Fisheries Technology</option>
                            <option value="ah">Animal Health(HND)</option>
                            <option value="ap">Animal Production(HND)</option>
                            <option value="ae">Agricultural Extension</option>
                    </select>
                    </div>
                    <div class="form">
                        <Label>Level</Label>
                        <select name="level" id="">
                            <option value="0" selected disabled>Select Level</option>
                            <option value="nd1">ND1</option>
                            <option value="nd2">ND2</option>
                            <option value="hnd1">HND1</option>
                            <option value="hnd2">HND2</option>
                        </select>
                    </div>
                    <div class="form">               
                        <Label>Day</Label>
                        <select name="day" id="">
                            <option selected disabled>Select Day</option>
                            <option value="1">Monday</option>
                            <option value="2">Tuesday</option>
                            <option value="3">Wednesday</option>
                            <option value="4">Thursday</option>
                            <option value="5">Friday</option>
                            <option value="6">Saturday</option>
                        </select>
                    </div>
                    <div class="form">
                        <label for="venue">Venue</label>       
                        <input type="text" name="venue" id="" placeholder="Venue">
                    </div>
                    <div class="form">
                        <label for="start">Start Time</label>
                        <input type="text" name="st" id="" placeholder="Starting_time">
                    </div>
                    <div class="form">
                        <label for="end">End Time</label>
                        <input type="text" name="et" id="" placeholder="Ending_time">
                    </div>
                    <div align="right" class="form">
                        <button type="submit">ADD Course</button>
                    </div>
                    </form>
                </div>
                <div class="footer"></div>
            </div>
        </div>
    
    <div class="newcontainer">
        <div class="new_pg">
            <div class="new_header">
                <span class="cancel">&times</span>
                <h2 id="NewHead">Create New semester</h2>
            </div>
            <div class="form_conn">
                <form action="conn/semester.php" method="POST" >
                    <div class="form">
                        <label class="label" for="course_code">Semester Name</label>
                        <select name="semester" id="">
                            <option selected disabled>Select Semester</option>
                            <option value="1">Semester 1</option>
                            <option value="2">Semester 2</option>
                        </select>
                    </div>
                        <button type="submit">Create</button>
                </form>
            </div>
                <div class="footer"></div>
        </div>
    </div>
    <script src="javascript/formadd.js"></script>

    </body>
</html>