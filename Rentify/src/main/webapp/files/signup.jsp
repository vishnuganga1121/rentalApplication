<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/all.min.css">
	<style type="text/css">
		<%@include
                file = "style.css"
        %>
	</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"> 
	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather+Sans&family=Montserrat:wght@200;300;700&family=Sacramento&family=Ubuntu:wght@700&display=swap"
	rel="stylesheet">
	
</head>
<body>

	<h1 class="head">
		Rentify <i class="fa-solid fa-bolt-lightning "></i>
	</h1>
	<main class="signup-main">

		<div class="register">
			<form class="form" action="registerForm" >
				<table>
					<tr>
						<td><label>First Name: </label></td>
						<td><input class="field" type="text" name="firstName" placeholder="First Name"></td>
					</tr>
					<tr>
						<td><label>Last Name: </label></td>
						<td><input class="field" type="text" name="lastName" placeholder="Last Name"></td>
					</tr>
					<tr>
						<td><label>Type: </label></td>
						<td><select id="type" name="type" class="field">
							<option selected>Buyer</option>
							<option>Seller</option>
						</select></td>
					</tr>
					<tr>
						<td><label>Phone Number: </label></td>
						<td><input class="field" type="text" name="phoneNumber" placeholder="Phone Number"></td>
					</tr>
					<tr>
						<td><label>Email: </label></td>
						<td><input class="field" type="email" name="email" placeholder="Email"></td>
					</tr>
					<tr>
						<td><label>Password: </label></td>
						<td><input class="field" type="password" name="password" placeholder="Password">
						</td>
					</tr>
					<tr>
						<td><label>District: </label></td>
						<td><input class="field" type="text" name="district" placeholder="District">
						</td>
					</tr>

				</table>
				<button class="calc c1" type="submit">
					<i class="fa-solid fa-circle-check"></i>
				</button>
				<button class="calc c2" type="reset">
					<i class="fa-solid fa-circle-xmark"></i>
				</button>
			</form>
		</div>
	</main>

</body>
</html>