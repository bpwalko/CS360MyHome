<?php

function getVarFromUser($userID, $var)
{
	$sqlVar = "SELECT " . $var . " FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->$var;
	}
	return $resultVar;
}

function getStateModHI($userID)
{
	$sqlVar = "SELECT state FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->state;
	}
	$sqlMod = "SELECT health FROM states WHERE state='" . $resultVar . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthPrice = $row->health;
	}
	return $healthPrice;
}

function getStateModHOI($userID)
{
	$sqlVar = "SELECT state FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->state;
	}
	$sqlMod = "SELECT home_owners FROM states WHERE state='" . $resultVar . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthPrice = $row->home_owners;
	}
	return $healthPrice;
}

function getStateFullAI($userID)
{
	$sqlVar = "SELECT state FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->state;
	}
	$sqlMod = "SELECT car_full FROM states WHERE state='" . $resultVar . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthPrice = $row->car_full;
	}
	return $healthPrice;
}

function getStateLiAI($userID)
{
	$sqlVar = "SELECT state FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->state;
	}
	$sqlMod = "SELECT car_liability FROM states WHERE state='" . $resultVar . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthPrice = $row->car_liability;
	}
	return $healthPrice;
}

function getAgeModHI($userID)
{
	$sqlVar = "SELECT age FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->age;
	}
	$sqlAge = "SELECT max(age) FROM age WHERE age<='" . $resultVar . "'";
	$result = DB::select($sqlAge);
	foreach($result as $row)
	{
		//echo $row . "<br><br>";
		$age = $row->{'max(age)'};
	}
	$sqlMod = "SELECT healthMod FROM age WHERE age='" . $age . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthMod = $row->healthMod;
	}
	return $healthMod;
}

function getAgeModAI($userID)
{
	$sqlVar = "SELECT age FROM userInfo WHERE userID='" . $userID . "'";
	$result2 = DB::select($sqlVar);
	foreach($result2 as $row)
	{
		$resultVar = $row->age;
	}
	$sqlAge = "SELECT max(age) FROM age WHERE age<='" . $resultVar . "'";
	$result = DB::select($sqlAge);
	foreach($result as $row)
	{
		//echo $row . "<br><br>";
		$age = $row->{'max(age)'};
	}
	$sqlMod = "SELECT carMod FROM age WHERE age='" . $age . "'";
	$resultMod = DB::select($sqlMod);
	foreach($resultMod as $row)
	{
		$healthMod = $row->carMod;
	}
	return $healthMod;
}

function getInfoColumns()
{
	$columns = array();
	$sql2 = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='myhome' AND `TABLE_NAME`='userInfo'";
	$result2 = DB::select($sql2);
	foreach($result2 as $row)
	{
		array_push($columns, $row->COLUMN_NAME);
	}
	return $columns;
}

function getServiceColumns($vendtype)
{
	$columns = array();
	$sql2 = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='myhome' AND `TABLE_NAME`='$vendtype'";
	$result2 = DB::select($sql2);
	foreach($result2 as $row)
	{
		array_push($columns, $row->COLUMN_NAME);
	}
	return $columns;
}

function getUserID()
	{
		$sqlID = "SELECT userID FROM users WHERE firstname='" . session('firstname') . "'";
		$resultID = DB::select($sqlID);
		foreach($resultID as $row)
		{
			$userID = $row->userID;
		} 
		return $userID;
	}


function getVendTypeFromName($vendName)
{
    $sqlID = "SELECT vendType FROM vendors WHERE vendName='" . $vendName . "'";
    $resultID = DB::select($sqlID);
    foreach($resultID as $row)
    {
        $userID = $row->vendType;
    } 
    return $userID;
}

function getVendID($vendName)
{
    $sqlID = "SELECT vendID FROM vendors WHERE vendName='" . $vendName . "'";
    $resultID = DB::select($sqlID);
    foreach($resultID as $row)
    {
        $userID = $row->vendID;
    } 
    return $userID;
}

function getVendType()
{
	if(isset($_GET['searchFor']))
	{
		$searchFor = $_GET['searchFor'];
		if($searchFor=='CS')
		{
			return 'cell_services';
		}
		if($searchFor=='IS')
		{
			return 'internet_services';
		}
		if($searchFor=='HI')
		{
			return 'health_insurance';
		}
		if($searchFor=='AI')
		{
			return 'auto';
		}
		if($searchFor=='HOI')
		{
			return 'home_insurance';
		}
		if($searchFor=='LC')
		{
			return 'lawncare';
		}
		if($searchFor=='HS')
		{
			return 'housekeeping';
		}
	}
	return 'cell_services';
}

?>