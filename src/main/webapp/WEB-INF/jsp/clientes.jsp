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
		<div class="col-9 info-cliente-view">
			<div ng-if="!status.select">
				<h2>Seleccion</h2>
			</div>
			<div ng-if="status.select">
				<h2>Información del Cliente</h2>
				<div class="cl-name-info">
					<div class="row">
						<div class="col-1 cl-info-id" ng-if="data.selectedClient.id">
							<span class="sti">Id: </span>{{data.selectedClient.id}}
						</div>
						<div class="col-3 cl-info-nombre" ng-if="data.selectedClient.nombre">
							<span class="sti">Nombre: </span>{{data.selectedClient.nombre}}
						</div>
						<div class="col-3 cl-info-apellido" ng-if="data.selectedClient.apellido">
							<span class="sti">Apellidos: </span>{{data.selectedClient.apellido}}</div>
					</div>
				</div>
				<div class="cl-info-fecha">{{data.selectedClient.fecha_nacimiento}}</div>
				<div class="cl-info-telf">{{data.selectedClient.telf_movil}}</div>
				<div class="cl-info-sex">{{data.selectedClient.sexo}}</div>
				<div class="cl-info-embarazo">{{data.selectedClient.embarazo}}</div>
				<div class="cl-info-trabajo">{{data.selectedClient.trabajo}}</div>
				<div class="cl-info-comidas">{{data.selectedClient.comidas_dia}}</div>
				<div class="cl-info-agua">{{data.selectedClient.cantidad_agua}}</div>
				<div class="cl-info-fruta-ver-pes">{{data.selectedClient.fruta_verdura_pescado}}</div>
				<div class="cl-info-sueno">{{data.selectedClient.horas_sueno}}</div>
				<div class="cl-info-operaciones">{{data.selectedClient.operaciones}}</div>
				<div class="cl-info-alergias" ng-if="data.selectedClient.alergias">id{{data.selectedClient.alergias}}</div>
			</div>
			
		</div>
	</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

