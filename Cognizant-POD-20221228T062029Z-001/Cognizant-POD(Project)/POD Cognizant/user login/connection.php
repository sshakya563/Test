<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

$con = mysqli_connect('localhost', 'root', '','crime_data');

// get the post records
$fullname = $_POST['fullname'];
$emailid = $_POST['emailid'];
$age = $_POST['age'];
$password = $_POST['password'];
$mobilenumber = $_POST['mobilenumber'];
$IdCardNo = $_POST['IdCardNo'];

// database insert SQL code
$sql = "INSERT INTO `userregistration` (`id`, `fulName`, `email`, `age`, `password`,`mobileNo`,`cardNo`) VALUES ('0', '$fullname', '$emailid', '$age', '$password','$mobilenumber','$IdCardNo')";

// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Contact Records Inserted";
}

?>