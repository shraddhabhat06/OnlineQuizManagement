<?php
	require('connect.php');
	session_start();
	if(isset($_SESSION["email"]))
	{
		session_destroy();
	}
	
	$ref=@$_GET['q'];		
	if(isset($_POST['submit']))
	{	
		$password = ($_POST['password']);
		$password = stripslashes($password);
		$password = addslashes($password);

    $email = $_POST['email'];
		$email = stripslashes($email);
		$email = addslashes($email);

		$email = mysqli_real_escape_string($con,$email);
		$password = mysqli_real_escape_string($con,$password);					
		
		$str= "SELECT * FROM candidate WHERE email='$email' and password='$password'";
		
		$result = mysqli_query($con,$str);
		if((mysqli_num_rows($result))!=1) 
		{
			echo "<center><h3><script>alert('Incorrect Username or password');</script></h3></center>";
			header("refresh:0;url=candidateLogin.php");
		}
		else
		{
			$_SESSION['logged']=$email;
			$row=mysqli_fetch_array($result);
			$_SESSION['name']=$row[1];
			$_SESSION['id']=$row[0];
			$_SESSION['email']=$row[7];
			$_SESSION['password']=$row[9];
			header('location: account.php?q=1'); 					
		}
	}
?>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="header"><h2>Candidate Portal</h2></div>
     <div class="container">
       <div class="title"><span>Login Form</span></div>
        
        <form  method="post" action="candidateLogin.php" enctype="multipart/form-data">
            <div class="user-details">
              <br>
                  <br>
                <div class="input-box"> 
                <span class="details">Email</span>
                <input type="text" placeholder="Enter Email Id" name="email" required></div>
              <div class="input-box">
                <span class="details">Password</span>
                <input type="password" placeholder="Enter Password" name="password" required>
              </div>
         
          
          <div class= "button">
            <input type="submit" name="submit" value="Login">
          </div>
          <div class="signup-link">Not a member? <a href="candidateRegisteration.php">Register Now </a></div>
        </form>
      </div>
    
      <script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
  </body>
</html>
