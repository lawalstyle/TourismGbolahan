
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" data-tag="font">
    <link rel="stylesheet" href="CSS/style.css" >
</head>
<body>
<a href="#main-section" class="landing-page-link">
                <div class="solid-button-container">
                  <button class="solid-button-button button">
                    <a href = "index.php"><span>Back to home page</span></a>
                  </button>
                   
                </div>
              </a>
<div class="container">

        <div class="forms-container">
            <div class="signin-signup">
                <form action="login_user.php" method = "post" class="sign-in-form">
                    <h2 class="title">Sign in</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Username" id = "Username" name="Username">
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" id = "Password"name ="Password">
                    </div>
                    <input type="submit" value="Login" class="btn solid">

                    <p class="social-text">Or Sign in with social platforms</p>
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

                    </div>
                    <br>
                    <a href = "register.php">
                            First time Users, Register?</a>
                </form>
                <form action="add_user.php" method="post" class="sign-up-form">
                    
                    </div>
                </form>
            </div>
        </div>
        
    </div>
    <script src="app.js"></script>
</body>
<!-- partial -->
  <script  src="./Loginscript.js"></script>
</html>
