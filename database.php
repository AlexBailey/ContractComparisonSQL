<?php

$dbServer = "127.0.0.1";
	$dbUser = "root";
	$dbPass = "";
	$dbName = "contractdb";

	function ConnectToDb ($server, $user, $pass, $database) {

		$link = mysql_pconnect($server, $user, $pass);
		$select = mysql_select_db($database, $link);
		if (!$link || !$select)
			return false;
		else
			return $link;
		}
	
	
	$link = ConnectToDb ($dbServer, $dbUser, $dbPass, $dbName);
	
?>