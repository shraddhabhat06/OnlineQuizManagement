<?php
include_once 'connect.php';
session_start();
$email=$_SESSION['email'];
//delete feedback
if(isset($_SESSION['key'])){
if(@$_GET['fdid'] && $_SESSION['key']=='admin123') {
$id=@$_GET['fdid'];
$result = mysqli_query($con,"DELETE FROM feedback WHERE id='$id' ") or die('Error');
header("location:dash1.php?q=4");
}
}
//delete user
if(isset($_SESSION['key'])){
    if(@$_GET['demail'] && $_SESSION['key']=='admin123') {
    $demail=@$_GET['demail'];
    $r1 = mysqli_query($con,"DELETE FROM rank WHERE email='$demail' ") or die('Error');
    $r2 = mysqli_query($con,"DELETE FROM history WHERE email='$demail' ") or die('Error');
    $result = mysqli_query($con,"DELETE FROM candidate WHERE email='$demail' ") or die('Error');
    header("location:dash1.php?q=1");
    }
    }
//delete examiner
if(isset($_SESSION['key'])){
    if(@$_GET['demail'] && $_SESSION['key']=='admin123') {
    $demail=@$_GET['demail'];
    $result = mysqli_query($con,"DELETE FROM examiner WHERE email='$demail' ") or die('Error');
    header("location:dash1.php?q=3");
    }
    }
?>
