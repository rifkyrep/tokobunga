<?php
$connect = new mysqli("localhost","root","") or die(mysqli_error());
mysqli_select_db($connect,"tokobunga") or die (mysqli_error());
?>