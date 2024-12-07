<?php
$databaseHost = 'admin.ccao5tlwblcq.ap-south-1.rds.amazonaws.com';
$databaseName = 'dbdb';
$databaseUsername = 'admin';
$databasePassword = 'admin123';

// Open a new connection to the MySQL server
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
