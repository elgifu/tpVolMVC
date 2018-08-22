<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

<title>Liste des réservations</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<tr>
				<td>id</td>
				<td>numero de réservation</td>
				<td>date de la réservation</td>
				<td>Vol Concerné</td>
				<td> Client </td>
				<td>Passager(s)</td>
				<td></td>
			</tr>
			
			<c:forEach items="${reservations}" var="reservation">
						<tr>
							<td>${reservation.id_reservation}</td>
							<td>${reservation.numero}</td>
							<td>${reservation.vol}</td>
							<td>${reservation.client}</td>
							<td><a href="" class="btn btn-secondary">Passager(s)</a></td>
							<td><a href="./edit?id=${reservation.id_reservation}" class="btn btn-info">Editer </a> <a href="./delete?id=${reservation.id_reservation}" class="btn btn-danger">Supprimer</a></td>
						</tr>
			</c:forEach>
		</table>
		
		<footer><a href="./add" class="btn btn-primary">ajouter une réservation</a></footer>
	</div>
	
</body>
</html>