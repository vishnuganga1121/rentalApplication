<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculate</title>
<link rel="stylesheet" href="style.css">
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
	<div class="r-log">
		<img class="clogo" alt="clogo" src="Clogo.svg"> <i
			class="fa-solid fa-bolt-lightning font1"></i>
	</div>
	<h1 class="head">
		Electricity Bill Payment <i class="fa-solid fa-bolt-lightning "></i>
	</h1>
	<main class="calculate-main">

		<div class="register">
			<form class="form" action="output.jsp" >
				<table>
					<tr>
						<td><label>Name: </label></td>
						<td><div class=" sp">
								<h6 class="name">Thomas</h6>
							</div></td>
					</tr>

					<tr>
						<td><label>Meter Id: </label></td>
						<td><div class=" sp">
								<h6 class="meter"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Initial Reading: </label></td>
						<td><div class=" sp">
								<h6 class="ir"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Final Reading: </label></td>
						<td><div class=" sp">
								<h6 class="fr"></h6>
							</div></td>
					</tr>

				</table>
				<div class="pay">
					<button class="calc" type="submit">
						<i class="fa-solid fa-circle-check"></i>
					</button>
					<h5 class="hide">calculate</h5>
				</div>
			</form>
		</div>
	</main>
</body>
</html>