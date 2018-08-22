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
				<th>Adresse</th>
				<th>Reservations</th>
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
					<td>${passager.adresse.numero}${passager.adresse.rue}
						${passager.adresse.codePostal} ${passager.adresse.ville}</td>
					<td><a href="./reservation?id=${passager.idPassager}"
						class="btn btn-danger">Reservations</a></td>
					<td><a href="./edit?id=${passager.idPassager}"
						class="btn btn-primary">edition</a></td>
					<td><a href="./delete?id=${passager.idPassager}"
						class="btn btn-danger">Supprimer</a></td>
				</tr>
			</c:forEach>

		</table>
		<a href="./add" class="btn btn-primary">ajouter passager</a>
	</div>
</body>
</html>