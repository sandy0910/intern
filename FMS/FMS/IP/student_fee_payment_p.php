<html>
<head>
  <title>Student Fee Payment</title>
  <link rel="stylesheet" href="SFP.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.sheetjs.com/xlsx-0.19.3/package/dist/xlsx.full.min.js"></script>

  <script>
  $(document).ready(function() {
  // Define variables to store the selected filter values
  var selectedOption = $('input[name="fee_option"]:checked').val();
  var selectedProgramFilter = $('select[name="program_filter"]').val();
  var selectedBatchFilter = $('select[name="batch_filter"]').val();

  // Function to filter table rows based on search input
  $("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("table tr:not(:first)").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });

  function loadTableData() {
    $.ajax({
      type: 'POST',
      url: 'load_data_p.php',
      data: {
        fee_option: selectedOption,
        program_filter: selectedProgramFilter,
        batch_filter: selectedBatchFilter
      },
      success: function(data) {
        $('#student_table tbody').html(data);
      }
    });
  }

  $('input[name="fee_option"]').on("change", function() {
    selectedOption = $(this).val();
    loadTableData();
  });

  $('select[name="program_filter"]').on("change", function() {
    selectedProgramFilter = $(this).val();
    loadTableData();
  });

  $('select[name="batch_filter"]').on("change", function() {
    selectedBatchFilter = $(this).val();
    loadTableData();
  });

  // Load table data with the default selected filter values on page load
  loadTableData();
});4

function ExportToExcel(type, fn, dl) {
  var elt = document.getElementById('student_table');
  var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
  return dl ?
    XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
    XLSX.writeFile(wb, fn || ('Untitled.' + (type || 'xlsx')));
}

function showFilters() {
    var form = document.getElementById("filters");
    form.style.display = form.style.display === "none" ? "block" : "none";
}
  </script>
</head>

<body>
  <center>
    <img id="ptu" src="images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
    <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
    <h1>Student Fee Payment</h1>
    <input type="text" id="search" placeholder="Search">
    <button id="tf" onclick="showFilters()">Toggle filters</button>
    <form id="filters" style="display: none">
    <select name="program_filter">
  <option value="%">All Programs</option>
  <option value="1">CE - Bachelor of Technology</option>
  <option value="2">ME - Bachelor of Technology</option>
  <option value="3">EC - Bachelor of Technology</option>
  <option value="4">CS - Bachelor of Technology</option>
  <option value="5">EE - Bachelor of Technology</option>
  <option value="6">EI - Bachelor of Technology</option>
  <option value="7">CH - Bachelor of Technology</option>
  <option value="8">IT - Bachelor of Technology</option>
  <option value="9">MT - Bachelor of Technology</option>
  <option value="10">CE - Master of Technology - Structural Engineering</option>
  <option value="11">CE - Master of Technology - Environmental Engineering</option>
  <option value="12">ME - Master of Technology - Energy Technology</option>
  <option value="13">ME - Master of Technology - Production Design and Manufacturing</option>
  <option value="14">EC - Master of Technology - Electronics and Communication Engineering</option>
  <option value="15">EC - Master of Technology - Wireless Communication</option>
  <option value="16">CS - Master of Technology - Data Science</option>
  <option value="17">CS - Master of Technology - Information Security</option>
  <option value="18">EE - Master of Technology - Electrical Drives and Control</option>
  <option value="19">IT - Master of Technology - Internet of Things</option>
  <option value="20">EI - Master of Technology - Instrumentation Engineering</option>
  <option value="21">CS - Master of Computer Application</option>
  <option value="22">PH - Master of Science - Materials Science and Technology</option>
  <option value="23">MB - Master of Business Administration - Innovation, Entrepreneurship and Venture Development</option>
  <option value="24">MB - Master of Business Administration - International Business</option>
  </select><br>
  <select name="batch_filter">
  <option value="%">All batches</option>
<?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "feesportal");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to retrieve distinct batch values
$sql    = "SELECT DISTINCT batch FROM student_academic";
$result = $conn->query($sql);

// Populate the select dropdown with batch values
while ($row = $result->fetch_assoc()) {
    echo '<option value="' . $row['batch'] . '">' . $row['batch'] . '</option>';
}

$conn->close();
?>
</select><br>
      <label>
        <input type="radio" name="fee_option" value="fee-paid" checked>Fee-Paid Students
      </label><br>
      <label>
        <input type="radio" name="fee_option" value="fee-defaulters">Fee-Defaulters
      </label>
    </form>
    <table id="student_table">
      <thead>
        <tr>
          <th>Registration Number</th>
          <th>Name</th>
          <th>Current Year</th>
          <th>Course name</th>
          <th>Department</th>
          <th>Batch</th>
        </tr>
      </thead>
      <tbody></tbody>
    </table>
    <form action="../../FMS1/PDF/generate-pdf.php">
      <input type="submit" value = "generate Pdf">
    </form>

  </center>
</body>
</html>