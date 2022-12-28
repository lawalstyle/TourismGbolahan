<?php 
session_start();
include('connect.php') ?>
<?php //include('session.php'); ?>
<?php
ini_set("display errors", "1");
ini_set("display_startup_errors", "1");
error_reporting(E_ALL);
?>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>LawalStyle</title>
  <link rel="stylesheet" href="CSS/Loginstyle.css">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script 
     src="https://kit.fontawesome.com/64d58efce2.js"
     crossorigin="anonymous"></script>
     <title>Login</title>
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Tammudu+2&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style4.css">
    <link rel="stylesheet" href="https:..cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
<a href="#main-section" class="landing-page-link">
                <div class="solid-button-container">
                  <button class="solid-button-button button">
                    <a href = "members.php"><span>Back to Dashboard</span></a>
                  </button>
                   
                </div>
              </a>
<div class="container">
<?php

$username=$_SESSION['username'];
$qry = mysqli_query($conn,"SELECT * FROM Customers WHERE Username='$username'"); // select query
$data = mysqli_fetch_array($qry); // fetch data

//var_dump($data);
mysqli_close($conn);
?>

        <div class="forms-container">
            <div class="signin-signup">
                <form action="add_user.php" method = "post" class="sign-in-form">
                <h2 class="title">My Profile</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Username" id = "Username" value="<?php echo $data['Username']?>" name = "Username">
                    </div>
                    <!-- <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder=" Change Password" id = "Password" name = "Password">
                    </div> -->
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Full-Name" id = "fullname" value="<?php echo $data['Fullname']?>" name = "Fullname">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="text" placeholder="Email" id = "email" value="<?php echo $data['Email']?>" name = "Email">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="date" placeholder="Date Of Birth" value="<?php echo $data['DOB']?>" id = "dob" name = "DOB">
                    </div>
                    <input type="submit" name="submut" value="Update" class="btn solid">
<!-- 
                    <p class="social-text">Or Sign Up with social platforms</p>
                    <div class="social-media">
                        <a href="#" class="social-icon">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="#" class="social-icon">
                            <i class="fab fa-google"></i>
                        </a>
                    </div> -->
                    <br>
                    <a href = "login.php">
                            Login Here?</a>
                </form>
    </div>
    <script src="JS/app.js"></script>
</body>
<!-- partial -->
  <script  src="JS/Loginscript.js"></script>
</html>
