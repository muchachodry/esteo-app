<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../jspf/header.jspf"%>
<div>
<h1>Users</h1>
<p>${Cliente.id}</p>
<p>${Cliente.nombre}</p>
<p>${Cliente.apellido}</p>

</div>
<%@ include file="../jspf/footer.jspf"%>