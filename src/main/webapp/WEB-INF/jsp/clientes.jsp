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
			<span>nuevo Cliente</span>
			<i class="material-icons">person_add</i>
				<show-clients></show-clients>
			</div>
		</nav>
		<div class="col-8">
			<h2>Client Info</h2>
		</div>
	</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

