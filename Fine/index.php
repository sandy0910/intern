<!DOCTYPE html>
<html>
<head>
    <title>Navigation Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');

        /* Set body background color */
        body {
            color: white;
            background-color: #222222;
            font-family: 'Poppins', sans-serif;
        }

        /* center {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        } */

        a {
            font-family: 'Poppins';
            display: inline-block;
            width: 200px; /* Set the desired width */
            height: auto;
            text-align: center;
            padding: 10px;
            color: #fff;
            background-color: #333;
            border-radius: 5px;
            text-decoration: none;
            margin: 5px;
        }

        /* Change anchor tag styles on hover */
        a:hover, #logout-button:hover {
            background-color: #555;
        }


        #ptu {
            display: inline-block;
            vertical-align: middle;
        }

        #title {
            display: inline-block;
            vertical-align: middle;
            margin-left: 20px;
        }

        h1 {
            text-align: center;
            font-size: 30px;
            font-weight: 600;
        }

        input[type] {
            width: auto;
            height: auto;
            background-color: #3B3B3B;
            color: white;
            padding: 10px;
            font-family: 'Poppins';
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 200px; /* Set the desired width */
            height: auto;
            background-color: #3B3B3B;
            color: white;
            padding: 10px;
            font-family: 'Poppins';
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 10px;
            cursor: auto;
        }

        button:hover {
            background-color: #757575;
        }
    </style>
        <script>
        function fetchDetails() {
            const regNumber = document.getElementsByName("regNumber")[0].value;

            const xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        document.getElementById("studentDetails").innerHTML = xhr.responseText;
                    } else {
                        document.getElementById("studentDetails").innerHTML = "Error fetching details.";
                    }
                }
            };

            xhr.open("POST", "student_details.php", true);
            xhr.open("POST", "lookup.php", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.send("regNumber=" + encodeURIComponent(regNumber));
            document.getElementById("lookupForm").style.display = "none";
        }
    </script>
</head>

<body>
    
    <center>
    <div class="container">
        <!-- Your HTML content here -->
        <img id="ptu" src="ptu-logo.png" height="150px">
        <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
        <h1>FINE MONITORING SYSTEM</h1>
        <form id="lookupForm">
            <input type="text" name="regNumber" required placeholder="Registration number">
            <input type="button" value="Fetch Details" onclick="fetchDetails()">
        </form>
        <div id="studentDetails"></div>
    </div>
    </center>
</body>
</html>

<!--<table cellpadding="0" cellspacing="0">
            <tbody><tr class="top">
                    <td>
                              
              <div class="col-lg-12 card card-body" style="border-radius: 20px;">
              <b style="text-align:center">STUDENT DETAILS</b>
              <br>
                   
                       <div class="row">
                       <div class="col-md-4">
                        <img src=""
                       </div>
                       <div class="col-md-8" style="margin-top:-1rem">
                          <b style="padding-right: 94px;">NAME </b>: SANTHOSH K<br>
                          <b style="padding-right: 50px;">STUDENT ID </b>: 21IT1047<br>
                          <b style="padding-right: 94px;">EMAIL </b>: kanagarajan.n75@gmail.com<br>
                          <b style="padding-right: 37px;">PROGRAMME </b>: Bachelor of Technology <br>
                          <b style="padding-right: 37px;">DEPARTMENT </b>: Information Technology<br>
                          <b style="padding-right: 84px;">BATCH </b>: 2021<br>
                          <b style="padding-right: 62px;">SEMESTER </b>: 5<br>
                          <b style="padding-right: 70px;">SECTION </b>:                        </div>
                   </div>
                  
               </div>     
                               </td>                
            </tr>
            
            <tr class="heading">
                <td style="text-align:center">Course Registration Details</td>
                <td> </td>
            </tr>
            
            </tbody></table>-->