<?php
   include 'conn/connection.php';
   if (isset($_POST['submit'])){
       $search = mysqli_real_escape_string($connection, $_POST['search']);
       $action = "SELECT * FROM courses WHERE course_code LIKE '%$search%' OR course_title LIKE '%$search%' OR dept LIKE '%$search%' OR level LIKE '%$search%' OR day LIKE '%$search%' OR venue LIKE '%$search%' OR start LIKE '%$search%' OR end LIKE '%$search%' ";
       $result = mysqli_query($connection, $action);
       $resultcheck = mysqli_num_rows($result);
            if ($resultcheck > 0) {
               echo "<h2>There are ".$resultcheck." results for your search</h2>";
                while ($row = mysqli_fetch_assoc($result)){
                echo "<tr>
                <td>{$row['course_code']}</td>
                <td>{$row['course_title']}</td>
                <td>{$row['dept']}</td>
                <td>{$row['level']}</td>
                <td>{$row['day']}</td>
                <td>{$row['venue']}</td>
                <td>{$row['start']}</td>
                <td>{$row['end']}</td>
                </tr>\n";
           }
             } else {
                        echo "<h2>There are no results for your search</h2>";
                    }
                    
                }
            ?>
        </div> 
</body>
</html>
