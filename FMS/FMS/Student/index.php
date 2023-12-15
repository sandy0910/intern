<html>
<head>
  <title>Student Fee Payment</title>
  <link rel="stylesheet" href="../IP/SFP.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.sheetjs.com/xlsx-0.19.3/package/dist/xlsx.full.min.js"></script>
</head>
<body>
<body>
  <center>
    <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
    <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
    <h1>STUDENT FMS LOGIN</h1>
    <form action="student_view.php" method = "POST">
    <div class="label_regno">
          <label for="regno">STUDENT REGNO </label>
          <input type="text" name="stud_id" id="stud_id" required>
    </div>
    <input type="submit" value="ENTER" name="stu_regno" class = "small_btn">
    </form>
  </center>  
</body>
</html>  