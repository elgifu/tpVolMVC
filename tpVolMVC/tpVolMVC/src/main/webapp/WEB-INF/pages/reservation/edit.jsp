<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page des Réservations</title>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

<title>edition</title>
</head>
<body>
	<div class="container">
		<fieldset>
			<legend>edition d'une réservation</legend>
			<form:form action="save" method="get" modelAttribute="reservation">
				
				<div class="form-group">
							<form:label path="client.id_client"> Client : </form:label>
							<form:select path="client.id_client" cssClass="form-control">
								<form:option value="">pas de client renseigné</form:option>
								<form:options items="${clients}" itemLabel="nom" itemValue="client_id"/>
							</form:select>
							<form:errors path="client"></form:errors>
				</div>
				<div class="form-group col-md-3">
					<form:label path="id_reservation">id : </form:label>
					<form:input path="id_reservation" cssClass="form-control" readonly="true"/>
					<form:errors path="id_reservation"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="numero">numéro de réservations : </form:label>
					<form:input path="numero" cssClass="form-control"/>
					<form:errors path="numero"></form:errors>
				</div>
				<div class="form-group">
					<form:label path="date">Date de Reservation : </form:label>
					<form:input type="date" path="date"  cssClass="form-control"/>
					<form:errors path="date"></form:errors>
				</div>
				<div class="form-row">
					<form:label path="vol"> Vol : </form:label>
						<form:select path="vol" cssClass="form-control">
							<form:options items="${vols}" itemValue="id"/>
						</form:select>
					<form:errors path="vol"></form:errors>
				</div>
<!-- 				<label for="client">Client </label> -->
<!--                    <select name="clientId"  class="form-control"> -->

<%--                        <c:forEach items="${clients}" var="client"> --%>
<%--                            <option value="${client.nom}">${client.id_client}</option> --%>
<%--                        </c:forEach> --%>
				<footer>
					<button type="submit" class="btn btn-success">Valider</button>
					<a href="./" class="btn btn-primary">Retour</a>
				</footer>
			</form:form>
		</fieldset>
	</div>
</body>
</html>