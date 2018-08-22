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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Vols</title>
</head>
<body>
	<div class="container">
		<table class="table">

			<tr>
				<th>Identifiant du Vol</th>
				<th>Date de départ</th>
				<th>Date d'arrivée</th>
				<th>Heure de départ</th>
				<th>Heure d'arrivée</th>
				<th>Accès aux réservations</th>
			</tr>
			<c:forEach items="${vols}" var="vol">
				<tr>
					<td>${vol.id}</td>
					<td><fmt:formatDate value="${vol.dateDepart}"
							pattern="dd/MM/yyyy" /></td>
					<td><fmt:formatDate value="${vol.dateArrivee}"
							pattern="dd/MM/yyyy" /></td>
					<td><fmt:formatDate value="${vol.heureDepart}"
							pattern="HH:mm:ss" /></td>
					<td><fmt:formatDate value="${vol.heureArrivee}"
							pattern="HH:mm:ss" /></td>
					<td><a href="./delete?id=${adherent.id}"
						class="btn btn-danger">supprimer</a></td>
					<td><a href="./edit?id=${adherent.id}" class="btn btn-primary">edition</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="./add" class="btn btn-primary">ajouter vol</a>
	</div>
</body>
</html>