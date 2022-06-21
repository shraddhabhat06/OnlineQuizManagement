<?php
	include("connect.php");
	session_start();
	
	if(isset($_POST['submit']))
	{	
		$name = $_POST['name'];
		$name = stripslashes($name);
		$name = addslashes($name);
    
    $lname = $_POST['lname'];
		$lname = stripslashes($lname);
		$lname = addslashes($lname);
    
    $gender = $_POST['gender'];
		

    $dob = date('Y-m-d',strtotime($_POST['dob']));

    $address = $_POST['address'];
		$address = stripslashes($address);
		$address = addslashes($address);
	

    $collegename = $_POST['collegename'];
		$collegename = stripslashes($collegename);
		$collegename = addslashes($collegename);


		$email = $_POST['email'];
		$email = stripslashes($email);
		$email = addslashes($email);

    $phno = $_POST['phno'];
	

		$password = ($_POST['password']);
		$password = stripslashes($password);
		$password = addslashes($password);

    $cpassword = ($_POST['cpassword']);
		$cpassword = stripslashes($cpassword);
		$cpassword = addslashes($cpassword);  
    
		$str="SELECT email from candidate WHERE email='$email'";
		$result=mysqli_query($con,$str);
		
		if((mysqli_num_rows($result))>0)	
		{
            echo "<center><h3><script>alert('This email is already exists');</script></h3></center>";
            header("refresh:0;url=candidateLogin.php");
        }
    else if($password!=$cpassword){
      echo "<center><h3><script>alert('Passwords do not match');</script></h3></center>";
      header("refresh:0;url=candidateRegisteration.php");
    }
		else
		{
      $str="insert into candidate set name='$name', lname='$lname', gender='$gender', dob='$dob',address='$address', collegename='$collegename',phno='$phno',email='$email',password='$password', cpassword='$cpassword'";
			if((mysqli_query($con,$str)))
			echo "<center><h3><script>alert('You have successfully registered !');</script></h3></center>";
			header('location: candidateLogin.php?q=1');
      
		}
    }
?>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="https://kit.fontawesome.com/9835b16a01.js" crossorigin="anonymous"></script>
     
    
   </head>
  
<body>
  <div class="container">
    <div class="title"> <i class="fas fa-book-reader"></i> Candidate Registration </div>
    
    <div class="content">
      <form method="post" action="candidateRegisteration.php" enctype="multipart/form-data">
        <div class="user-details">
          <div class="input-box">
            <span class="details ">First Name</span>
            <input type="text success" placeholder="Enter your First name" name="name" required >
                
               
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter your Last name" name="lname" required > 
          </div>
         
          <div class="input-box">
            <span class="details">Gender</span>
           <select class="list" name="gender" >
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="others">Others</option>
            </select>
                           
          </div>
          <div class="input-box">
            <span class="details">Date of Birth</span>
            <input type="date" name="dob" required >			
          </div>
          <div class="input-box">
            <span class="details">Residential Address</span>
            <input type="text" placeholder="Address" name="address"  required>      
          </div>
          <div class="input-box">
            <span class="details">College Name</span>
            <input type="text" placeholder="Enter College Name" name="collegename" required >   
          </div>
          
          <div class="input-box">
            <span class="details">E-mail</span>
            <input type="email"  placeholder="Enter your E-mail" name="email" required >
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="phone" placeholder="Enter your number" name="phno" required >
                
               
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" placeholder="Enter your password" name="password" required >
                
               
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" placeholder="Confirm your password" name="cpassword" required >
                
              
          </div>
        </div>
        
        
        <div class="button">
          <a href="#"></a><input type="submit" name="submit" value="Register"></a>
        </div>
      </form>
    </div>
  </div>
  <script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
</body>
</html>