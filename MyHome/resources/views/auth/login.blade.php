<!DOCTYPE html>
<html lang="en">
<head ">
<script language="javascript">
        function search_service() {
                let input = document.getElementById('searchbar').value;
            if(input == "Cell"){
                //window.location.href = "../MyHome/searchHub.php";
            }

        }
    </script>

	<title>MyHome - Login</title>
	<script language="javascript">
		function SelectRedirectUser(){
			window.location.href = "../MyHome/login";
		}
		function SelectRedirectVend(){
			//window.location.href = "../MyHome/loginVend.php";
		}
	</script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	<script>var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {  return new bootstrap.Tooltip(tooltipTriggerEl)})</script>
</head>
<style>
input[type=text]:focus {
  border-color: #8c5020;
}
input[type=password]:focus {
  border-color: #8c5020;
}
.form { margin: 50px auto;
    text-align: center;
    width: 400px;
    padding: 70px 40px;
    background: white;
    border-style: solid; 
    border-radius: 15px; 
    border-color: black;
}
.form-control {
padding: 5px; 
border-style:solid; 
border-color:black;
border-width: 3px;
}
</style>
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
        					<a class="nav-link active" href='login.php'>Login</a>
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
        					<a class="nav-link" href='userHub.php'>User Hub</a>
        				</li>
					<li class="nav-item">
        					<a class="nav-link" href='vendorHub.php'>Vendor Hub</a>
        				</li>
				</ul>
      				<form class="d-flex">
      					<input class="form-control me-2" style = "border-width:1px;" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" style="border-color: #8c5020; color: #8c5020;" onclick="search_service()" name="search">Search</button>
    				</form>
    			</div>
  		</div>
		</nav>
		<div class = "container-fluid" style="padding:10px 15px;">
		<div class = "row" style="">
			<div class = "col" style="margin-top: 70px; margin-left:125px;">
		 	<div class="form" method="post" name="loginType">
			<p class="login-title" style="color:black;"><b> Would you like to login as a User or a Vendor? </b></p><br>
				<input type="radio" style="color:white;" onClick ="SelectRedirectUser();" value="User">
				<label for="User"> User</label><br>
				<input type="radio" onClick ="SelectRedirectVend();" value="Vendor">
				<label for="Vendor"> Vendor</label><br><br>
			<p class="link" style="color:#8c5020;"><a style="color:#8c5020;" href='registration'>New Registration</a></p>
  			</div>
			</div>
			<div class = "col" style = "margin-right:125px;">
		 	<form class="form" action="{{ route('login.post') }}" method="POST" name="login">
			@csrf
        		<h1 class="login-title" style="color:black;">User Login</h1><br>
        		<input type="text" style="padding: 5px; border-style:solid;" name="firstname" placeholder="First Name" autofocus="true"/><br><br>
			<input type="text" style="padding: 5px; border-style:solid;" name="lastname" placeholder="Last Name" autofocus="true"/><br><br>
        		<input type="password" style="padding: 5px; border-style:solid;" name="password" placeholder="Password"/><br><br>
        		<input type="submit" style="padding: 5px 10px; color: white; background-color:#8c5020; border-radius:10px; border-style:solid; border-color:black;" value="Login" name="submit" class="login-button"/><br><br>
			</div>
		</div>
		</div>
</body>
</html>