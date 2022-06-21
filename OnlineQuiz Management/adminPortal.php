<?php
include_once 'connect.php';
$ref=@$_GET['q'];
$email = $_POST['email'];
$password = $_POST['password'];

$email = stripslashes($email);
$email = addslashes($email);
$password = stripslashes($password); 
$password = addslashes($password);
$result = mysqli_query($con,"SELECT email FROM admin WHERE email = '$email' and password = '$password'") or die('Error');
$count=mysqli_num_rows($result);
if($count==1){
session_start();
if(isset($_SESSION['email'])){
session_unset();}
$_SESSION["name"] = 'admin';
$_SESSION["key"] ='admin123';
$_SESSION["email"] = $email;
header("location:dash1.php?q=0");
}
else if((mysqli_num_rows($result))!=1) 
{
    echo "<center><h3><script>alert('Incorrect password');</script></h3></center>";
    header("refresh:0;url=adminLogin.php");
}
?>