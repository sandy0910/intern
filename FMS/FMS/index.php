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

        #logout-button {
            width: auto;
            height: auto;
            margin-top: 20px;
            font-family: 'Poppins', sans-serif;
            color: #fff;
            background-color: #333;
            border-radius: 5px;
            padding: 10px;
            border: none;
            position: absolute;
            top: 1px;
            right: 1px;
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
</head>
<body>
    <center>
        <img id="ptu" src="IP/images/ptu-logo.png" height="150px">
        <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
        <h1>FEE PAYMENT MONITORING SYSTEM</h1>

        <div><a href="IP/student_fee_payment_p.php">Fee Defaulters</a></div>
        <br>
        <div><a href="MAIL/date.php">Send email</a></div>
        <br>
        <div><a href="FEE_STRUCTURE/fee_struct.php">Fee Structure</a></div>
        <br>
        <div><a href="REVENUE/index.php">Revenue</a></div>
        <br>
        <div><a href="Caution_deposite/due_ar.php">Caution Deposit</a></div>
        <br>
        <div><a href="SCHOLARSHIP/index.php">SCHOLARSHIP STUDENT</a></div>
        <br>
        <!-- <div><a id="logout-button" href="IP/logout.php">Logout</a></div> -->
    </center>
</body>
</html>
