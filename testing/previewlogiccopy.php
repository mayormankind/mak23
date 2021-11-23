 <?php
        
        if (isset($_POST['get_timetable'])) {
            $dept = $_POST['dept'];
            $level = $_POST['level'];
            $days = array('MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY');
            $day = -1;
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='1' ";
            $fff = mysqli_query($connection,$f);
            $all_monday=mysqli_fetch_all($fff);
            array_unshift($all_monday,"MONDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='2' ";
            $fff = mysqli_query($connection,$f);
            $all_tue=mysqli_fetch_all($fff);
            array_unshift($all_tue,"TUESDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='3' ";
            $fff = mysqli_query($connection,$f);
            $all_wed=mysqli_fetch_all($fff);
            array_unshift($all_wed,"WEDNESDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='4' ";
            $fff = mysqli_query($connection,$f);
            $all_thur=mysqli_fetch_all($fff);
            array_unshift($all_thur,"THURSDAY");
            $f = "SELECT * FROM courses WHERE dept= '$dept' AND level = '$level' AND day='5' ";
            $fff = mysqli_query($connection,$f);
            $all_fri=mysqli_fetch_all($fff);
            array_unshift($all_fri,"FRIDAY");
           $all_courses=[];
        print_r($all_monday);

           $table_courses='';
           foreach($all_ as $courses){
               $table_courses.="<tr>
                <td>$courses[0]</td>
                <td>".$courses[1][2]."</td>
                <td>".$courses[2][2]."</td>
                <td>".$courses[3][2]."</td>
                <td>".$courses[4][2]."</td>
                <td>".$courses[5][2]."</td>
               </tr>";
           }
        }     