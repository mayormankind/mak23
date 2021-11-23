<?php
include 'connection.php';
if (isset($_POST['get_timetable'])) {
    $dept = $_POST['dept'];
    $level = $_POST['level'];

    
    if (empty($dept) || empty($level)) {
        header('Location: index.php?get_timetable=emptyfield');
        exit();
    }else {
        if ($dept === "comp" && $level === "HND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "comp" && $level === "HND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "slt" && $level === "HND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "slt" && $level === "HND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "stat" && $level === "HND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "stat" && $level === "HND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "vlt" && $level ==="HND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "vlt" && $level ==="HND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "ahpt" && $level === "HND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }elseif ($dept === "ahpt" && $level === "HND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ah" && $level === "ND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ah" && $level === "ND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ap" && $level === "ND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ap" && $level === "ND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ae" && $level === "ND1") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        } elseif ($dept === "ae" && $level === "ND2") {
            header("Location: index.php?get_timetable=no_ttms");
        exit();
        }
        else {
            $dp = $dept;
            $lvl = $level;
            header("Location: individual.php?get_timetable=success");
        }
    }
}
