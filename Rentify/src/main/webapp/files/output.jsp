<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculate</title>
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
	<div class="r-log">
		<img class="clogo" alt="clogo" src="Clogo.svg"> <i
			class="fa-solid fa-bolt-lightning font1"></i>
	</div>
	<h1 class="head">
		Electricity Bill Payment <i class="fa-solid fa-bolt-lightning "></i>
	</h1>
	<main class="output-main">

		<div class="register">
			<form class="form" action="" method="post">
				<table>
					<tr>
						<td><label>Name: </label></td>
						<td>
							<div class=" sp">
								<h6 class="name">Thomas</h6>
							</div>
						</td>
					</tr>

					<tr>
						<td><label>Meter Number: </label></td>
						<td><div class=" sp">
								<h6 class="meter"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>House no: </label></td>
						<td>
							<div class=" sp">
								<h6 class="hno"></h6>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Address: </label></td>
						<td><div class=" sp">
								<h6 class="add"></h6>
							</div></td>
					</tr>
				</table>
				<hr>
				<table>
					<tr>
						<td><label>Initial Reading: </label></td>
						<td><div class=" sp">
								<h6 class="ir"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Final Reading: </label></td>
						<td>
							<div class=" sp">
								<h6 class="fr"></h6>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Period: </label></td>
						<td>
							<div class="period">
								<div class=" sp">
									<h6 class="fr"></h6>
								</div>
								<div class="space"></div>
								<div class=" sp">
									<h6 class="fr"></h6>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td><label>Consumer cost: </label></td>
						<td><div class=" sp">
								<h6 class="cc"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Previous Due: </label></td>
						<td><div class=" sp">
								<h6 class="due"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Tax: </label></td>
						<td><div class=" sp">
								<h6 class="tax"></h6>
							</div></td>
					</tr>
					<tr>
						<td><label>Total cost: </label></td>
						<td><div class=" sp">
								<h6 class="total"></h6>
							</div></td>
					</tr>
					<tr>
				</table>

				<div class="pay">
					<button class="calc" type="submit">
						<i class="fa-solid fa-circle-check"></i>
					</button>
					<h5 class="hide">Pay</h5>
				</div>

			</form>
		</div>
	</main>
</body>
</html>