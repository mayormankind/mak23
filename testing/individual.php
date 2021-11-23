<?php
$dept = $_POST['dept'];
$level = $_POST['level'];
$day = date('w');
$hour = date('H');
$amPm = ($hour >= 12) ? 'PM' : 'AM';
$link = mysqli_connect('localhost', 'root', '', 'time_table') or die('Failed to Connect to database');
// Default Procedure


// Schedule The Courses
// Form Procedure

if (isset($_POST['get_timetable'])) {
    $level = $_POST['level'];
    $dept = $_POST['dept'];

    $sql = "SELECT * FROM courses WHERE day='$day' AND dept='$dept' AND level='$level';";
    $query = mysqli_query($link, $sql);
    $result = mysqli_fetch_all($query);

    $active_course = [];
    $upcoming_courses = [];
    foreach ($result as $course) {
        if ($course[7] <= $hour &&  $hour < ($hour + ($course[8] - $course[7]))) {
            $active_course = $course;
        }
    }

    if ($hour == 13) {
        $active_container = "<h2> College Staff's and Student's Break </h2>";
    } else if ($hour < 8 || $hour > 18) {
        $active_container = "<h2 style='text-align:center'> The College's activities are yet to start </h2>";
    } else {
        $active_container = " <span>Course Title: $active_course[2]</span>
    <span>Course Code: $active_course[1]</span>
    <span>Venue: $active_course[6]</span>
    <span class='live-time'>Time: </span>";
    }

    foreach ($result as $course) {
        if ($course[7] > $hour) {
            array_push($upcoming_courses, $course);
        }
    }
    $upcoming_container = '';
    foreach ($upcoming_courses as $course) {
        $upcoming_container .= '<div class="course">
        <span>' . $course[2] . '</span>
        <span>' . $course[1] . '</span>
        <span>' . $course[6] . '</span>
        <span>' . $course[7] . ":00" . '</span>
    </div>';
    }

    if (count($upcoming_courses) == 0) {
        $upcoming_container = '<span style="color:grey;text-align:center;">There are no upcoming courses for now</span>';
    }
    if (count($active_course) == 0) {
        $active_container = '<span style="color:black;text-align:center;">There are no academic activities for now</span>';
    }
}
?>
<?php
    include './conn/studnotif.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/individual.css">
    <title>FCAH&PT | TT</title>
</head>


<body>
    <header>
        <div class="container">
            <h2 id="logo"><span>f</span>cah&pt <span>t</span>tms</h2>
            <form action="preview.php" method="POST">
                <label for="">Department</label>
                <select name="dept" id="">
                    <option><?php echo "$dept"; ?></option>
                </select>
                <label for="">Level</label>
                <select name="level" id="">
                    <option><?php echo "$level"; ?></option>
                </select>
                <button name="get_timetable">Get Timetable</button>

            </form>
        </div>

    </header>
    <div class="notif"><?php echo $msg;?></div>
    <div class="hero-bg">
        <h1>Going on now</h1>
        <div class="course-info">
            <?php echo $active_container ?>

        </div>
    </div>
    <div class="upcoming-courses">

        <div class="contain">
            <h2>Upcoming Courses</h2>
            <div class="upcoming-course">
                <?php echo $upcoming_container ?>

            </div>
        </div>
    </div>
    <footer>
        <p>&copy; <span>FCAHPT 2020</span></p>
    </footer>
</body>
<script>
    let live_time = document.querySelector('.live-time');

    function liveTime() {
        let date = new Date(),
            hour = date.getHours(),
            minute = date.getMinutes(),
            secs = date.getSeconds(),
            amPm = (hour >= 12) ? 'PM' : 'AM';


        function addZeros(n) {
            return n < 10 ? `0${n}` : n;
        }

        live_time.textContent = `Time: ${addZeros(hour)} : ${addZeros(minute)} : ${addZeros(secs)} ${amPm}`;

    }

    setInterval(liveTime, 1000);
</script>
<script>
    var close = document.querySelector(".close");
    var msgbox = document.querySelector(".msg");
close.onclick = function() {
    msgbox.style.display = "none";
}
</script>
</html>