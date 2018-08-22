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
<title>Liste des reservations du client</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<tr>
				<th>Id</th>
				<th>Date</th>
				<th>Numero</th>
			</tr>
			<c:forEach items="${reservations}" var="reservation">
				<tr>
					<td>${client.reservations}</td>
					
					<td>${client.reservation.date}</td>
					
					<td>${client.reservation.numero}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>