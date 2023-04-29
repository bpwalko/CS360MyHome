<?php
include("auth_session.php");

function SpenceDelete()
{
	$id = $_GET['id'];
	$dbname = "MyHome";

	$conn = mysqli_connect("localhost", "root", "", $dbname);
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "DELETE FROM cell_services WHERE csID = $id"; 

	if (mysqli_query($conn, $sql)) {
		mysqli_close($conn);
		header('Location: userHub.php');
		exit;
	} else {
		echo "Error deleting record";
	}
}

function getColumns($vendtype)
{
	$columns = array();
	$sql2 = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='myhome' AND `TABLE_NAME`='$vendtype'";
	$result2 = $con->query($sql2);
	while($row = $result2->fetch_assoc())
	{
		array_push($columns, $row["COLUMN_NAME"]);
	}
}

function getUserID()
	{
		require('db.php');
		$sql = "SELECT userID FROM users WHERE firstname='" . $_SESSION['firstname'] . "'";
		$result = $con->query($sql);
		while($row = $result->fetch_assoc())
		{
			echo $row['userID']. "<br>";
			$userID = $row['userID'];
		} 
		return $userID;
	}


function getVendType()
{
	return 'cell_services';
}


function addService()
	{
	   	require('db.php');
			
		$userID = getUserID();
		$vendType = getVendType();

		$columns = getColumns($vendtype);
				
		$values = "'" . $userID . "', '" . $vendtype . "', '" . $serviceID . "',";
		$create_datetime = date("Y-m-d H:i:s");
		$values = " (" . $values . " '" . $create_datetime . "')";
		$fields = "(userID, vendType, serviceID, create_datetime)";
		$query    = "INSERT into services $fields  VALUES $values";
		$result3   = mysqli_query($con, $query);
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>MyHome - User Hub</title>
	<script src="userHubFunctions.js">
   	</script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {  return new bootstrap.Tooltip(tooltipTriggerEl)})</script>
</head>
<style>
p {
  font-size: 21px;
  font-weight: bold;
}
td {
  margin: 0px 5px;
  padding: 0px auto;
}
th {
  margin: 0px 5px;
  padding: 0px auto;
}
input[type=text]:focus {
  border-color: #8c5020;
}
input[type=password]:focus {
  border-color: #8c5020;
}
label {
  font-size: 18px;
  padding: 7px 0;
}
.form { margin: 50px auto;
    width: 100px;
    text-align: center;
    padding: 55px 40px;
    background: white;
    border-style: solid; 
    border-radius: 15px; 
    border-color: black;
</style>
<?php
	require('db.php');
	if(isset($_POST['submit']))
	{
		$userID = getUserID();

		$table_choice=$_POST['vendType'];
		$priceFloor=stripslashes($_REQUEST['priceFloor']);
		$priceFloor=mysqli_real_escape_string($con, $priceFloor);
		$priceCeiling=stripslashes($_REQUEST['priceCeiling']);
		$priceCeiling=mysqli_real_escape_string($con, $priceCeiling);
		$create_datetime = date("Y-m-d H:i:s");
        $query    = "INSERT into needs (userID, service_type, priceFloor, priceCeiling, time_created)
                     	VALUES ('$userID', '$table_choice', '$priceFloor', '$priceCeiling', ' $create_datetime')";
		$result   = mysqli_query($con, $query);
	}
?>
<body style="margin-top: 12px; background-image: url('wood.jpeg');">
<div class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-radius:15px; padding: 15px 10px; border-style: solid; border-color: black">
  		<div class="container-fluid">
    		<a class="navbar-brand" href='index.html'>MyHome</a>
    			<div class="collapse navbar-collapse" id="navbarText">
      				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
        				<li class="nav-item">
        					<a class="nav-link" aria-current="page" href='index.html'>Home</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='login.php'>Login</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='signup.php'>Sign Up</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='update.php'>Update Information</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='vendorSignup.php'>Vendor Registration</a>
        				</li>
      				</ul>
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
        					<a class="nav-link active" href='userHub.php'>User Hub</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='vendorHub.php'>Vendor Hub</a>
        				</li>
				</ul>
      				<form class="d-flex">
      					<input class="form-control me-2" style = "border-width:1px;" id="searchbar" type="search" placeholder="Search" aria-label="Search">
      					<button class="btn btn-outline-success" style="border-color: #8c5020; color: #8c5020;" onclick="search_service()" name="search">Search</button>
    				</form>
    			</div>
  		</div>
		</nav>
		<div class = "container-fluid" style="">
		<div class = "row" style="margin: 15px auto; border-radius:15px; padding: 15px 10px; border-style: solid; border-color: black; text-align:center; background-color:white;">
		<h3>Welcome to MyHome, <?php echo $_SESSION['firstname']; ?>! What would you like to do?</h3>
		</div>
		<div class = "row" style="">
		<div class = "col form" style="margin:0px 10px;">
			<p style="">Your Current Services:</p><br>
			<table style="text-align:left; width: 100%;">
  			<tr style="text-align:left;">
   			 	<th>Company</th>
    				<th>Type</th> 
    				<th>Price</th>
  			</tr>
  			<tr>
    				<td>#</td>
    				<td>#</td> 
    				<td>#</td>
  			</tr>
  			<tr>
    				<td>#</td>
    				<td>#</td> 
    				<td>#</td>
  			</tr>
			</table>
		</div>
		<div class = "col form" style="text-align: left; margin:0px 10px">
		<form method="post" name="vendType">
			<p style="text-align:center;">Request Different Utilities</p>
        	<input type="radio" id="healthVendor" name="vendType" value="Health Insurance" onClick ="SelectRedirectHI();">
			<label for="healthVendor" style = "font-size: 1.1vw;"> Health Insurance</label><br>
			<input type="radio" id="homeVendor" name="vendType" value="Home Insurance" onClick ="SelectRedirectHOI();">
			<label for="homeVendor" style = "font-size: 1.1vw;"> Homeowner's Insurance</label><br>
			<input type="radio" id="autoVendor" name="vendType" value="Auto Insurance" onClick ="SelectRedirectAI();">
			<label for="autoVendor" style = "font-size: 1.1vw;"> Automobile Insurance</label><br>
			<input type="radio" id="intVendor" name="vendType" value="internet_services" onClick ="SelectRedirectIS();">
			<label for="intVendor" style = "font-size: 1.1vw;"> Internet Service</label><br>
			<input type="radio" id="cellVendor" name="vendType" value="cell_services" onClick ="SelectRedirectCS();">
			<label for="cellVendor" style = "font-size: 1.1vw;"> Cell Service</label><br>
			<input type="radio" id="lawnVendor" name="vendType" value="Lawncare" onClick ="SelectRedirectLC();">
			<label for="lawnVendor" style = "font-size: 1.1vw;"> Lawncare</label><br>
			<input type="radio" id="houseVendor" name="vendType" value="Housekeeping" onClick ="SelectRedirectHS();">
			<label for="houseVendor" style = "font-size: 1.1vw;"> Housekeeping</label><br>
			<!--<label for="priceFloor" text="Price Floor"> Price Floor </label><br>
			<input type="text" id="priceFloor" name="priceFloor" placeholder="Price Floor" > <br>
			<label for="priceCeiling" text="Price Ceiling">Price Ceiling </label><br>
			<input type="text" id="priceCeiling" name="priceCeiling" placeholder="Price Ceiling"> <br> <br>-->
			<div class="row" style="margin: 0px 15px;">
			<!--<input type="submit" style="; margin:0px 0px; padding: 5px 10px; color: black; border-color: black; color: white; background-color:#8c5020; border-radius:10px; border-style:solid; border-width:3px;" value="Submit" name="submit" class="login-button" href='userHub.php'/>-->
			</div>
		</form>
		</div>
		<div class = "col form" style="margin:0px 10px">
			<p style="">Recommended Services:</p><br>
			<?php
			
			require('db.php');
			$sql = "SELECT userID, firstname FROM users WHERE firstname='" . $_SESSION['firstname'] . "'";
			$result = $con->query($sql);
			
				while($row = $result->fetch_assoc())
				{
					$userID = $row['userID'];
				}

			$columns4 = array();
			$sql4 = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='myhome' AND `TABLE_NAME`='userInfo'";
			$result4 = $con->query($sql4);

			while($row = $result4->fetch_assoc())
			{
				//echo $row["COLUMN_NAME"]. "<br>";
				array_push($columns4, $row["COLUMN_NAME"]);
			}

			$sql6 = "SELECT numFamily FROM userInfo WHERE userID='" . $userID . "'";
			$result6 = $con->query($sql6);
			
				while($row = $result6->fetch_assoc())
				{
					$numFamily = $row['numFamily'];
					//echo $numFamily;
				}


			$columns3 = array();
			$sql3 = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='myhome' AND `TABLE_NAME`='cell_services'";
			$result3 = $con->query($sql3);
				// output data of each row
				while($row = $result3->fetch_assoc())
				{
					//echo $row["COLUMN_NAME"]. "<br>";
					array_push($columns3, $row["COLUMN_NAME"]);
				}
			$max_index = count($columns3);
			//echo $max_index;
			

			$sugHotSpot='NO';
			if ($numFamily > 2)
			{
				$sugHotSpot='YES';
			}

			$sugRoaming=$numFamily * 2;
			$sugPrice = $numFamily * 15 + 5;

			echo "<p style = 'font-size: 16px'> Recommended Values: <br>HotSpot: $sugHotSpot; Roaming Data >= $sugRoaming Gigs;" . "<br>" . "text_n_talk = Unlimited; Price <= $$sugPrice </p> <br>";
			$sql = "SELECT * FROM cell_services WHERE roamingData >= '" . $sugRoaming . "' AND price <= '" . $sugPrice . "' AND text_n_talk='unlimited' AND hotspot='" . $sugHotSpot . "'";
			//echo $sql;
			$result = $con->query($sql);
			echo "<table border='2'  margin-left='1px 1px' style='border-style:solid; font-size:11px;'>";
			echo "<p style = 'font-size: 16px'> Plans Matching Recommended Values: </p>";
			while($row = $result->fetch_assoc())
			{
				echo "<tr>";
				for ($i=2; $i < $max_index - 1; $i++)
				{
					if($i != 3){
						echo "<td>";
						if($i > 2){
							echo $columns3[$i] . ": ";
						}
						else{
							echo "Business:" . " ";
						}
						echo $row[$columns3[$i]] . " ";
						echo "</td>";
					}
				}
				echo "<td data-bs-toggle='modal' data-bs-target='#userModal'> ";
				echo "<p style='text-decoration:none; color:#e1ad01; font-size: 10px;'> <br>More<br>Details </p>";
				echo "<div class='modal fade' id='userModal'>";
			   	echo "<div class='modal-dialog'>";
			     	echo "<div class='modal-content'>";
			       		// Modal Header
				 		echo "<div class='modal-header'>";
				    		echo "<h4 style='text-align:center; color:black;' class='modal-title'>" . $row[$columns3[2]] . "'s Plan </h4>";
				    		echo "<button type='button' class='btn-close' data-bs-dismiss='modal'></button>";
				 		echo "</div>";
			       		// Modal body 
			         		echo "<div class='modal-body'>";
			           		echo "<p style='font-size:16px; color:black;'> Gigabytes of Roaming Data: " . $row[$columns3[4]] . " </p>";
						echo "<p style='font-size:16px; color:black;'> Does this plan come with a mobile hotspot? " . $row[$columns3[5]] . " </p>";
						echo "<p style='font-size:16px; color:black;'> Gigabytes of Text and Talk Data: " . $row[$columns3[6]] . " </p>";
						echo "<p style='font-size:16px; color:black;'> Price per month: " . $row[$columns3[7]] . " </p>";
						echo "<a href='addService.php?id=" . $row['csID'] . "&user=" . getUserID() . "&vend=" . getVendType() ."' style='text-decoration:none; color:#e1ad01;'>Remove</a>";
			         		echo "</div>";
			       		echo "</div>";
			     		echo "</div>";
			   	echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		
		?>
  		</div>	
		</div>
		</div>	
		</div>
		<div class="row" style="text-align:center; background-color: white; border-radius:10px; border-style:solid; margin: 10px auto; width: 99%;">
			<a style="text-decoration:none; color:black;" href="logout.php">Logout</a>
		</div>
</body>
</html>
