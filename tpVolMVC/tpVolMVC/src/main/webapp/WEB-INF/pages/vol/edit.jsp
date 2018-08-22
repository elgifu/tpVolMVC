<%@page import="java.util.List" %>
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
			<legend>edition d'adherent</legend>
			<form:form action="save" method="get" modelAttribute="adherent">
				<form:hidden path="version" />
				<div class="form-group">
					<form:label path="civilite">civilite:</form:label>
					<form:select path="civilite" items="${civilite}" cssClass="form-control" itemLabel="titre" />
				</div>
				<div class="form-group">
					<form:label path="id">id:</form:label>
					<form:input path="id" cssClass="form-control" readonly="true" />
				</div>
				<div class="form-group">
					<form:label path="prenom">prenom:</form:label>
					<form:input path="prenom" cssClass="form-control" />
					<form:errors path="prenom">METS TON PRENOM BATAR</form:errors>
				</div>
				<div class="form-group">
					<form:label path="nom">nom:</form:label>
					<form:input path="nom" cssClass="form-control" />
					<form:errors path="nom">METS TON NOM BATAR</form:errors>
					
				</div>
				<div class="form-group">
					<form:label path="dateNaissance">Date de Naissance:</form:label>
					<form:input path="dateNaissance" cssClass="form-control" type="date"/>
					<form:errors path="dateNaissance"></form:errors>
					<form:errors path="dateNaissance">METS LA VRAIE DATE ENFLURE</form:errors>
					
				</div>
				<div class="form-group">
					<form:label path="adresse.numero">numero de rue:</form:label>
					<form:input path="adresse.numero" cssClass="form-control"
					type="number" />
				</div>
				<div class="form-group">
					<form:label path="adresse.rue">Rue:</form:label>
					<form:input path="adresse.rue" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="adresse.ville">Ville:</form:label>
					<form:input path="adresse.ville" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">enregistrer</button>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>