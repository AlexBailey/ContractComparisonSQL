<?php

include 'database.php';

$get_contract_lengths_string ="SELECT DISTINCT length  FROM contract";
$query_string = "SELECT device.device_id, CONCAT( brand.name,' ' ,device.name ) AS phone_name FROM Device, Brand WHERE device.brand_id = brand.brand_id";
$query_result = mysql_query($query_string);
$query_result_contract = mysql_query($get_contract_lengths_string);

if (!$query_result) {
	die('Invalid query: ' . mysql_error());
}

if (!$query_result_contract) {
	die('Invalid query: ' . mysql_error());
}

echo "
<p>Please select your device</p>
<form action='view.php' method='POST'>
	<select name='device_name' type='text' >";

while ($row = mysql_fetch_array($query_result)){
	echo "<option>" . $row['phone_name'] . "</option>";
}

echo "</select><br><br>";

echo "<p>Please select the contract length</p><select name='length'>";
while ($row1 = mysql_fetch_array($query_result_contract)){
	echo "<option> " . $row1['length'] . "</option>";
	 
}
echo "</select><br><br>";

echo "<button type='submit'>Search</button></form>";


?>

