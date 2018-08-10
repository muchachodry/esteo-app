<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="../jspf/header.jspf"%>

<script src="${s}/angular-src/app.js"></script>
<script src="${s}/angular-src/app.settings.js"></script>
<script src="${s}/angular-src/controllers/clients.ctrl.js"></script>
<script src="${s}/angular-src/controllers/components/show-clients.drct.js"></script>
<script src="${s}/angular-src/controllers/services/status-provider.svc.js"></script>

<div ng-app="osteo-app" ng-controller="clients" class="container-fluid w-left-bar">
	<div class="row main-row">
		<nav class="col-3 left-col-cli nav nav-tabs">
			<div class="col-12">
				<div class="row title-clients">
					<div class="col-6">
						<h2>Clientes</h2>
					</div>
					<div class="col-6">
						<a class="btn btn-primary log-in-btn bg-morado nclient" href="/osteo-app/nuevo-cliente">
							<i class="material-icons new-client-button">person_add</i>
						</a>
					</div>
				</div>
				<show-clients></show-clients>
			</div>
		</nav>
		<div class="col-8">
			<div ng-if="!status.select">
				<h2>Seleccion</h2>
			</div>
			<div ng-if="status.select">
				<h2>Dentro client info</h2>
				<div class="cl-info-id">1</div>
				<div class="cl-info-nombre">adrian</div>
				<div class="cl-info-apellido">calvo</div>
			</div>
			
		</div>
	</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

