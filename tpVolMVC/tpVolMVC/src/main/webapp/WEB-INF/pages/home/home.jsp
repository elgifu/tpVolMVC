<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/tp3_style.css" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<script type="text/javascript"></script>
<title>Bienvenue sur le TP Vol</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">Site de gestion des vols</h1>
		</div>

		<div class="row">
			<div class="col-md-10">
				<img class="cardimg" alt="" src="images/avion.jpg">
				<div id="d1" class="card" style="width: 18rem;">
					<div class="card-body">
						<a href="./vol" class="btn btn-primary">Vols</a>
					</div>
				</div>
				<div id="d2" class="card" style="width: 18rem;">
					<div class="card-body">
						<a href="./client" class="btn btn-primary">Clients</a>
					</div>
				</div>
				<div id="d3" class="card" style="width: 18rem;">
					<div class="card-body">
						<a href="./reservation" class="btn btn-primary">Réservations</a>
					</div>
				</div>
				<div id="d4" class="card" style="width: 18rem;">
					<div class="card-body">
						<a href="./passager" class="btn btn-primary">Passagers</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<footer>
			Copyright 2018<a href="" title=""></a>
		</footer>
	</div>
</body>
</html>