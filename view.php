		<?php

$fetched_name = $_POST['device_name'];
$fetched_length = $_POST['length'];
 		include 'database.php';
 		
		$test = "SELECT DISTINCT  carrier.name AS carrier_name, contract.handset_price, contract.texts, contract.minutes, contract.data, contract.monthly_price, device.name, contract.length
FROM carrier,contract,device,brand
WHERE contract.length = '$fetched_length' AND CONCAT( brand.name,' ' ,device.name ) = '$fetched_name' AND carrier.id = contract.carrier_id AND contract.device_id = device.device_id AND device.brand_id = brand.brand_id";
		

		$query = mysql_query($test);
		if (!$query) { 
   			 die('Invalid query: ' . mysql_error());
		}

		echo "<html>
		<head>
		<title>"; 
		echo $fetched_name;
		echo " - ";
		echo $fetched_length;
		echo " Months</title>
		</head>
		<body>
		<h1>";
echo $fetched_name;

echo"</h1>
		<h2>All plans represent a ";
		echo $fetched_length;
		echo " month contract.</h2>
		<div class='table'>";

		echo "<table border=1>
		<tr>
		<td>Carrier</td>
		<td>Monthly Price</td>
		<td>Handset Price</td>
		<td>Texts</td>
		<td>Minutes</td>
		<td>Data</td>
		</tr>
		";
		
		while ($row = mysql_fetch_array($query)) {

			echo "<tr>";
			echo "<td>".$row['carrier_name']."</td>";
			echo "<td backgroung='#234234'>".$row['monthly_price']."</td>";
			echo "<td>".$row['handset_price']."</td>";
			echo "<td>".$row['texts']."</td>";
			echo "<td>".$row['minutes']."</td>";
			echo "<td>".$row['data']."</td>";
			echo "</tr>";
			
		}
		echo"</table>";
		echo "

		</div>

		<div class='back'>
		<a href='../index.php'>take me back</a>
		</div>

		</body>

		</html>";
		?>