<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
		Rentify  <i class="fa-solid fa-house"></i>
	</h1>

	<div class="log full">
		<div class="space"></div>
		<form action="sellerLogout">
			<button class="calc full" type="submit">Logout <i class="fa-solid fa-user-check"></i></button>
		</form>
	</div>

	<div class="wel-main">
		<div class="wel-welcome">
			<h1>
				Welcome <span>${user.getFirstName()}${firstName}${sellerName}</span> <i class="fa-solid fa-face-smile smiley"></i>
			</h1>
		</div>

		<div class="option">
			<form action="addPropertyRedirect" method="post">
				<input type="hidden" name="sellerId" value=${user.getId()}${sellerId}>
<%--				<input type="hidden" name="sellerId" value=${sellerId}>--%>
				<input type="hidden" name="firstName" value=${firstName}>
				<input type="hidden" name="firstName" value=${user.getFirstName()}>
				<button class="calc" type="submit">Add Property</button>
			</form>
			<div class="space"></div>
			<form action="updateProperty">
				<input type="hidden" name="sellerId" value=${user.getId()}${sellerId}>
				<button class="calc" type="submit">Update Property</button>
			</form>
		</div>

	</div>
</body>
</html>