<?php

function OpenCon()
	{
		$dbhost = "localhost";
		$dbuser = "mkargar";
		$dbpass = "2640014481mK";
		$db = "mkargar";
		$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);

		return $conn;
	}

function CloseCon($conn)
	{
		$conn -> close();
	}

?>
