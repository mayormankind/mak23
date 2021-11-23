<?php
    // include 'conn/stud_loglg.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css/loginf.css">
    <link href="css/font-awesome.min.css" rel="stylesheet" />
</head>

<body>
    <div class="header">
        <h2 id="logo"><span>f</span>cah&pt <span>t</span>tms</h2>
        <h3 id="admin"><a href="adminlogin.php">Admin</a></h3>
    </div>
    <div align="center" class="content">
        <div class="date">
            <h1><span id="date">
                    <script src="javascript/time&day.js"></script>
                </span></h1>
        </div>
        <div class="time">
            <h2><span id="time">
                    <script src="javascript/time&day.js"></script>
                </span></h2>
        </div>

        <div class="select-section">
            <form action="individual.php" method="POST">
                <div class="form">
                    <select name="dept" id="select">
                        <option selected disabled>select your department</option>
                        <option value="comp">Computer Science</option>
                        <option value="stat">Statistics</option>
                        <option value="ahpt">Animal Health and Production Tech</option>
                        <option value="vlt">Vetinary Laboratory Technology</option>
                        <option value="slt">Science Laboratory Technology</option>
                        <option value="fish">Fisheries Technology</option>
                        <option value="ah">Animal Health (HND)</option>
                        <option value="ap">Animal Production (HND)</option>
                        <option value="ae">Agricultural Extension and Management (HND)</option>
                    </select>
                </div>
                <div class="form">
                    <select name="level" id="select2">
                        <option selected disabled>select level</option>
                        <option value="ND1">ND1</option>
                        <option value="ND2">ND2</option>
                        <option value="HND1">HND1</option>
                        <option value="HND2">HND2</option>
                    </select>
                </div>
                <div align="center" class="form">
                    <button name="get_timetable" type="submit"><b>SHOW TIMETABLE</b> </button>
                </div>
            </form>
            <?php
                // if (!isset($_GET['get_timetable'])) {                  
                // }
                // else {
                //      $act = $_GET['get_timetable'];
                //     if ($act == 'emptyfield') {
                //         echo "<p class='err'>One or both of the fields is empty*</p>";
                //     }
                //     elseif ($act == 'no_ttms') {
                //         echo "<p class='err'>No corresponding timetable for the department and level selected. 
                //         login again!</p>";                      
                //     }
                // }
                
            ?>
        </div>
    </div>
    <div class="footer" >
        <p>powered by &copy; <span id="maker">FCAH&PT</span></p>
    </div>

</body>

</html>