<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="../jspf/header.jspf"%>
<div class="container-fluid w-left-bar">
	<div class="row">
		<nav class="col-3 left-col-cli nav nav-tabs">
			<h2>Client List</h2>
			<div class="col-12">
			</div>
			<form action="/osteo-app/clientsPost" method="POST" >
			<input type="text" name="nombre"/>  
				<c:forEach items="${clientes}" var="clientes">
						<div class="col-12">
							<div class="sender">${clientes.nombre}</div>
						</div>
				</c:forEach>
				<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}" />
				<input type="submit"/>
			</form>
		</nav>
		<div class="col-8">
			<h2>Client Info</h2>
		</div>
	</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

