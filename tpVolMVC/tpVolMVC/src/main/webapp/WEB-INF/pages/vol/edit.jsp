<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>edition</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>edition des vols</legend>
			<form:form action="save" method="get" modelAttribute="vol">
				<div class="form-group">
					<form:label path="dateDepart">Date de Départ:</form:label>
					<form:input path="dateDepart" cssClass="form-control"
						type="date" />
					<form:errors path="dateDepart"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="dateArrivee">Date d'arrivée:</form:label>
					<form:input path="dateArrivee" cssClass="form-control"
						type="date" />
					<form:errors path="dateArrivee"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="heureDepart">Heure de départ:</form:label>
					<form:input path="heureDepart" cssClass="form-control"
						type="time" />
					<form:errors path="heureDepart"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="heureArrivee">Heure d'arrivée:</form:label>
					<form:input path="heureArrivee" cssClass="form-control"
						type="time" />
					<form:errors path="heureArrivee"></form:errors>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-success">enregistrer</button>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>