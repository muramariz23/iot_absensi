
<?php 
session_start();
 ?>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>LOGIN</title>
  </head>
  <body style="background-color: #986D8E;">

    <?php 
    include 'iot/config/database.php';
    $db = new database();
    $con = $db->connect(); 

    if (isset($_POST["login"])) {
      
      $username = $_POST["username"];
      $password = $_POST["password"];

      $result = mysqli_query($con, "select * from login where username = '$username'");

      if (mysqli_num_rows($result) == 1) {
        # cek password
        $row = mysqli_fetch_assoc($result);

          if ($password == $row["password"]) {

            $_SESSION["login"] = true;

          header("Location: ../iot_absensi/iot/");
          }
        }
    }
    ?>

    
    <div class="container">
      <div class="card position-absolute top-50 start-50 translate-middle" style="background-color: #4C0070; width: 25rem; height: 30rem;">
        <h1 style="text-align: center; color: white; margin-top: 10px;">LOGIN</h1>
        
        <form action="" method="POST" class="container">
        <div class="mb-3">
        <h2 style="text-align: center; margin-top: 20px; color: white;">Email address</h2>
        <input type="text" class="form-control" name="username" id="username">
         </div>
        <div class="mb-3">
        <h2 style="text-align: center; color: white;">Password</h2>
        <input type="password" class="form-control" name="password" id="password">
        </div>
        <button type="submit" name="login" class="btn btn-primary form-control" style="margin-top: 25px;">Submit</button>
      </form>

      </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
  </body>
</html>