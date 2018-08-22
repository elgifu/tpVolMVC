<%@page import="model.Reservation"%>
<%@page import="model.Adresse"%>
<%@page import="model.Passager"%>
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
<title>adherents</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<tr>
				<th>identifiant</th>
				<th>prenom</th>
				<th>nom</th>
				<th>codePostal</th>
				<th>ville</th>
				<th>pays</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach items="${passagers}" var="passager">
				<tr>
					<td>${passager.idPassager }</td>
					<td>${passager.prenom }</td>
					<td>${passager.nom }</td>
<%-- 					<td><fmt:formatDate value="${adherent.dateNaissance }" --%>
<%-- 							pattern="dd/MM/yyyy" /></td> --%>
					<td>${passager.adresse.codePostal}</td>
					<td>${passager.adresse.ville }</td>
					<td>${passager.adresse.pays }</td>
					<td><a href="./delete?id=${passager.idPassager}"
						class="btn btn-danger">supprimer</a></td>
					<td><a href="./edit_passager?Passagerid=${passager.id}" class="btn btn-primary">edition</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td><h4>--------------  Vos / Votre Réservation(s)  --------------</h4></td>
			</tr>
			<tr>
				<th>id_Réservation</th>
				<th>date_Réservation</th>
				<th>numéro_Réservation</th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<c:forEach items="${passagers}" var="passager">
				
					<td>${passager.idPassager }</td>
					<td>${passager.prenom }</td>
					<td>${passager.nom }</td>
				</c:forEach>
			</tr>
		</table>
		<a href="./add" class="btn btn-primary">ajouter passager</a>
	</div>
</body>
</html>