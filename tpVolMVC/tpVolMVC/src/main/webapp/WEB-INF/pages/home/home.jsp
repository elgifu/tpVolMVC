<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel=stylesheet type="text/css" href="css/homeStyle.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<title>Bienvenue sur le TP Vol</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">Site de gestion des vols</h1>
		</div>

		<div class="row">
			<div id="d5" class="col-md-2"></div>
			<div class="col-md-10">
				<div class="row">
					<div id="d1" class="card" style="width: 25rem;">
						<div class="card-body">
							<img class="cardimg" alt=""
								src="src/main/webapp/WEB-INF/images/avion.jpg"><a
								href="./vol" target="_blank" title=""><h5 class="card-title">Gestion
									des vols:</h5></a>
							<p class="card-text"></p>
							<a href="./vol" class="btn btn-primary">Vols</a>
						</div>
					</div>
					<div id="d2" class="card" style="width: 25rem;">
						<div class="card-body">
							<img class="cardimg" alt="" src="images/client.jpg"> <a
								href="./client" target="_blank" title=""><h5
									class="card-title">Gestion des clients:</h5></a>
							<p class="card-text"></p>
							<a href="./client" class="btn btn-primary">Clients</a>
						</div>
					</div>
					<div id="d3" class="card" style="width: 25rem;">
						<div class="card-body">
							<img class="cardimg" alt="" src="images/reservation.jpg"><a
								href="./reservation" target="_blank" title=""><h5
									class="card-title">Gestion des reservations:</h5></a>
							<p class="card-text"></p>
							<a href="./reservation" class="btn btn-primary">Réservations</a>
						</div>
					</div>
					<div id="d4" class="card" style="width: 25rem;">
						<div class="card-body">
							<img class="cardimg" alt="" src="images/passager.jpg"><a
								href="./passager" target="_blank" title=""><h5
									class="card-title">Gestion des passagers:</h5></a>
							<p class="card-text"></p>
							<a href="./passager" class="btn btn-primary">Passagers</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<footer class="jumbotron">
				Copyright 2018<a href="" title=""></a>
			</footer>
		</div>
</body>
</html>