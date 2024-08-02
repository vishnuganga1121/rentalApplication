<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%--<link rel="stylesheet" href="style.css">--%>
<%--<link rel="stylesheet" href="css/all.min.css">--%>
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
	<h2 class="desk">Use Desktop!</h2>
<%--<div class="fholder full">--%>
<%--        <div class="fcontent full">--%>
<%--            <div class="ele">--%>
<%--                <img  alt="clogo" src="Tomlogo2.png">--%>
<%--            </div>--%>
<%--            <div class="ele">--%>
<%--                <h3>Electricity Bill Generation</h3>--%>
<%--            </div>--%>
<%--            <div class="ele">--%>
<%--                <img  alt="clogo" src="Tomlogo2.png">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>

	<h1 class="head full">Rentify <i class="fa-solid fa-house"></i></h1>

	<div class="log full">
		<form action="signup" >
			<button class="calc full" type="submit">SignUp <i class="fa-solid fa-user "></i></button>
		</form>
		<div class="space"></div>
		<form action="login">
			<button class="calc full" type="submit">Login <i class="fa-solid fa-user-check"></i></button>
		</form>
	</div>

	<main class="index-main full">
		<div class="home">
			<h2><i class="fa-solid fa-feather-pointed"></i> About Us:</h2>
			<p>Welcome to Rentify, your go-to platform for seamless home rentals. Connect with buyers and sellers, explore diverse properties, and enjoy a secure, hassle-free experience.
				Find your perfect home today with Rentify!</p>

		</div>
	</main>
	
	<div class="footer full">
	<a href=""><i class="fa-brands fa-facebook-f social"></i></a>
	<a href=""><i class="fa-brands fa-instagram social"></i></a>
	<a href=""><i class="fa-brands fa-twitter social"></i></a>
	<p> <span><i class="fa-solid fa-copyright"></i></span>copyrights thomas, Inc</p>
	</div>




	<script src="https://kit.fontawesome.com/eecc7871c6.js"
		crossorigin="anonymous">
	</script>

</body>
</html>
