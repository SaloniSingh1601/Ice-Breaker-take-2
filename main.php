<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Ice-Breaker</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
  body{
    overflow-x: hidden;
  }
  #centered1{
    position: absolute;
    font-size:10vw;
    top: 30%;
    left: 30%;
    transform: translate(-50%, -50%);
  }
  #centered2{
    position: absolute;
    font-size:10vw;
    top: 50%;
    left: 40%;
    transform: translate(-50%, -50%);
  }
  #centered3{
    position: absolute;
    font-size:10vw;
    top: 70%;
    left: 30%;
    transform: translate(-50%, -50%);
  }
  #signup{
    width: 60%;
    border-radius: 30px;
  }
  #login{
    width: 60%;
    background-color: #fff;
    border: 1px solid #1da1f2;
    color:#1da1f2;
    border-radius: 30px;
  }
  #login:hover{
    width: 60%;
    background-color: #fff;
    border: 1px solid #1da1f2;
    color:#1da1f2;
    border-radius: 30px;
  }
  .well{
    background-color: #005792;
  }

</style>
  <body style="background-image: url('images/mainbg.jpg'); background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;">
  <div class="row">
    <div class="col-sm-12">
      <div class="well">
        <center>
          <h1 style="color:white";>Ice-Breaker</h1>
        </center>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6" style="left:0.5%;">
      <img src="images/logo.jpg" class="img-rounded" title="Ice-Breaker" width="650px" height="465px">
    </div>
    <div class="col-sm-6" style="left:8%">
      <!--img src="images/logo.jpg" class="img-rounded" title="Ice-Breaker" width="80px" height="65px"--> <!--logo-->
      <h2 style="color:white;"> <strong>See what's trending </strong> </h2>
        <h4 style="color:white;"> <strong>Join Now! </strong> </h4>
        <form action="" method="post">
          <button id="signup" class="btn btn-info btn-lg" name="signup">Signup</button> <br> <br>
          <?php
              if(isset($_POST['signup'])){
                echo "<script>window.open('signup.php','_self')</script>";
              }
           ?>
          <button id="login" class="btn btn-info btn-lg" name="login">Login</button> <br> <br>
          <?php
              if(isset($_POST['login'])){
                echo "<script>window.open('signin.php','_self')</script>";
              }
           ?>
        </form>
    </div>
  </div>
  </body>
</html>
