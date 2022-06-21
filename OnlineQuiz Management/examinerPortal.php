
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
		
		$str= "SELECT * FROM examiner WHERE email='$email' and password='$password'";
		
		$result = mysqli_query($con,$str);
		if((mysqli_num_rows($result))!=1) 
		{
			echo "<center><h3><script>alert('Incorrect Username or password');</script></h3></center>";
			header("refresh:0;url=examinerLogin.php");
		}
		else
		{
			$_SESSION['logged']=$email;
			$row=mysqli_fetch_array($result);
			$_SESSION['name']='examiner';
			$_SESSION['key']='examiner123';
			$_SESSION['email']=$row[7];
			$_SESSION['password']=$row[9];
			header('location: dash.php?q=0'); 					
		}
	}
?>