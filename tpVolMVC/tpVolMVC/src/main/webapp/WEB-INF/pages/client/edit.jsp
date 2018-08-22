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
<title>Edition</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>Edition de client</legend>
			<c:choose>
				<c:when test="${article.getClass().simpleName=='ClientPhysique'}">
					<c:url value="saveclientphysique" var="action"></c:url>
				</c:when>
				<c:when test="${article.getClass().simpleName=='ClientMoral'}">
					<c:url value="saveclientmoral" var="action"></c:url>
				</c:when>
				<c:otherwise>
					<c:url value="saveclientel" var="action"></c:url>
				</c:otherwise>
			</c:choose>
			<form:form action="${action}" method="get" modelAttribute="client">
<%-- 				<form:hidden path="version" /> --%>
				<div class="form-group">
					<form:label path="id">Id:</form:label>
					<form:input path="id" cssClass="form-control" readonly="true" />
				</div>
				<div class="form-group">
					<form:label path="nom">Nom:</form:label>
					<form:input path="nom" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="numeroTel">Numero de tel:</form:label>
					<form:input path="numeroTel" cssClass="form-control" type="number" />
				</div>
				<div class="form-group">
					<form:label path="numeroFax">Numero de fax:</form:label>
					<form:input path="numeroFax" cssClass="form-control" type="number" />
				</div>
				<div class="form-group">
					<form:label path="email">Email:</form:label>
					<form:input path="email" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="adresse.numero">Numero:</form:label>
					<form:input path="adresse.numero" cssClass="form-control" type="number"/>
				</div>
				<div class="form-group">
					<form:label path="adresse.rue">Rue:</form:label>
					<form:input path="adresse.rue" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="adresse.codePostal">Code postal:</form:label>
					<form:input path="adresse.codePostal" cssClass="form-control" type="number"/>
				</div>
				<div class="form-group">
					<form:label path="adresse.ville">Ville:</form:label>
					<form:input path="adresse.ville" cssClass="form-control" />
				</div>
				<c:choose>
					<c:when test="${article.getClass().simpleName=='ClientPhysique'}">
						<div class="form-group">
							<form:label path="prenom">bonus:</form:label>
							<form:input path="prenom" cssClass="form-control" />
						</div>
					</c:when>
					<c:when test="${article.getClass().simpleName=='ClientEl'}">
						<div class="form-group">
							<form:label path="prenom">bonus:</form:label>
							<form:input path="prenom" cssClass="form-control" />
						</div>
					</c:when>
					<c:otherwise>
						<div class="form-group">
							<form:label path="siret">Siret:</form:label>
							<form:input path="siret" cssClass="form-control" />
						</div>
					</c:otherwise>
				</c:choose>
<!-- 				<div class="form-group"> -->
<%-- 					<form:label path="emprunteur">Emprunteur:</form:label> --%>
<%-- 					<form:select path="emprunteur.id" cssClass="form-control"> --%>
<%-- 						<form:option value="">Disponible</form:option> --%>
<%-- 						<form:options items="${adherents}" itemLabel="nom" itemValue="id"></form:options> --%>
<%-- 					</form:select> --%>
<!-- 				</div> -->
				<div class="form-group">
					<button type="submit" class="btn btn-success">Enregistrer</button>
				</div>
			</form:form>
		</fieldset>
	</div>
</body>
</html>