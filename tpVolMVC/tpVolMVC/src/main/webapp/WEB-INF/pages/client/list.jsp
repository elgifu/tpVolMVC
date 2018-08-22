
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
<title>Liste des clients</title>
</head>
<body>

	<div class="container">
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Type</th>
				<th>Nom</th>
				<th>Numéro de tel</th>
				<th>Numéro de fax</th>
				<th>Email</th>
				<th>Adresse</th>
				<th>Prenom</th>
				<th>Siret</th>
				<th>Reservations</th>
			</tr>
			<c:forEach items="${clients}" var="client">
				<tr>
					<td>${client.id_client}</td>
					<td><c:choose>
							<c:when test="${client.getClass().simpleName=='ClientPhysique'}">Client physique
					</c:when>
							<c:when test="${client.getClass().simpleName=='ClientMoral'}">Client moral
					</c:when>

							<c:otherwise>Client El</c:otherwise>
						</c:choose></td>
					<td>${client.nom}</td>
					<td>${client.numeroTel}</td>
					<td>${client.numeroFax}</td>
					<td>${client.email}</td>
					<td>${client.adresse.numero}${client.adresse.rue}
						${client.adresse.codePostal} ${client.adresse.ville}</td>
					<td><c:if
							test="${client.getClass().simpleName=='ClientPhysique'|| client.getClass().simpleName=='ClientEl'}">
							${client.prenom}
						</c:if></td>
					<td><c:if
							test="${client.getClass().simpleName=='ClientMoral'}">
							${client.siret}
						</c:if></td>
					<%-- 					<td>${article.emprunteur.nom}${article.emprunteur.prenom}</td> --%>
					<td><a href="./delete?id=${client.id_client}"
						class="btn btn-danger">Delete</a></td>
					<td><a href="./edit?id=${client.id_client}"
						class="btn btn-info">Edit</a></td>
					<td><a href="./reservation?id=${client.id_client}" class="btn btn-danger">Reservations</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="./addclientphysique" class="btn btn-info">Add Client
			physique</a> <a href="./addclientmoral" class="btn btn-info">Add
			Client moral</a> <a href="./addclientel" class="btn btn-info">Add
			Client El</a>
	</div>
</body>
</html>