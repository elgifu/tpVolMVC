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
			<form:form action="save" method="post" modelAttribute="reservation">
				
				<div class="form-group col-md-8">
							<form:label path="client"> Client : </form:label>
							<form:select path="client.nom" cssClass="form-control">
								<form:options items="${clients}" itemLabel="nom" itemValue="id_client"/>
							</form:select>
				</div>
				<div class="form-group col-md-3">
					<form:label path="id_reservation">id : </form:label>
					<form:input path="id_reservation" cssClass="form-control" readonly="true"/>
				</div>
				<div class="form-group col-md-9">
					<form:label path="numero">numéro de réservations : </form:label>
					<form:input path="numero" cssClass="form-control"/>
				</div>
				<div class="form-row">
					<form:label path="vol"> Vol : </form:label>
						<form:select path="vol.id" cssClass="form-control">
							<form:options items="${vols}" itemValue="id"/>
						</form:select>
				</div>
				<div class="form-group">
					<form:label path=""> passager : </form:label>
					<form:input path=""/>
				</div>
				
				<footer>
					<button type="submit" class="btn btn-success">Valider</button>
					<a href="./" class="btn btn-primary">Retour</a>
				</footer>
			</form:form>
		</fieldset>
	</div>
</body>
</html>