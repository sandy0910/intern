<html>
<head>
    <title>Navigation Page</title>
    <link rel="stylesheet" href="../IP/SFP.css">
    <style>
        .card{
  margin: 30px;
  background-color: #ffffff1A;
  color: blue;
  width: 150px;
  border-radius: 8px;
}
.col-md-6{
  margin: 35px;
  color: brown;
}
.content{
  margin: 0px 0px 8px;
  padding: 0px 0px 20px;
  color: #ccc;
}
    </style>
</head>

<body>
    <center>
        <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
        <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
        <h1>Caution Deposite Portal</h1>
        <table id="student_table">
                <thead>
                    <tr>
                        <th>Department</th>
                        <th>Name Of Course</th>
                    </tr>
                </thead>
                <tbody>
        <?php
        session_start();
        // $flag = $_SESSION['flag'];
        $flag = 3;
        if($flag == 2)
        {
            // $dept = $_SESSION['dept'];
            $query = "SELECT * FROM u_prgm WHERE u_prgm.DEPT_ID = '$dept'";
        }
        else
        {
            $query = "SELECT * FROM u_prgm";
        }
        
        $conn = mysqli_connect("localhost", "root", "", "feesportal");
        $result = mysqli_query($conn,$query);
        if($result->num_rows>0)
        {
            while ($row = $result->fetch_assoc())
            {
                    echo '<tr>';
                    echo '<td>'.$row['DEPT_ID'].'</td>';
                    echo "<td><a href='due.php?Prgm_id=".$row["PRGM_ID"]." & Dept_id=" . $row["DEPT_ID"] . "'>" . $row["PRGM_NAME"] . "</a></td>";
                    echo '</tr>';
            }
        }
        ?>
                </tbody>
            </table>
            
</body>
</html>        