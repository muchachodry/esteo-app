<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="../jspf/header.jspf"%>
<div class="container">
	<div class="row main-row margin">
		<h1>Nuevo Cliente</h1>
		<div class="col-12">
			<form action="/addClient" method="post">               
	        	<fieldset>
	        		<div class="row">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-2 col-form-label">Nombre</label>
					            <div class="col-sm-10">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="off" type="text" name="nombre"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-2 col-form-label">Apellidos</label>
					            <div class="col-sm-10">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="apellido"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-2 col-form-label">Sexo</label>
					            <div class="col-sm-10">
						            <div class="ib-nc">
						            	<select class="form-fdos" autocomplete="no" type="text" name="sexo">
							            	<option selected>Elige sexo</option>
									        <option value="M">Masculino</option>
									        <option value="F">Femenino</option>
						            	</select>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-2 col-form-label">Fecha de nacimiento</label>
					            <div class="col-sm-10">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="date" name="fecha_nacimiento"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-2 col-form-label">Teléfono</label>
					            <div class="col-sm-10">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="telf_movil"/>
						            </div>
					            </div>
					        </div>
				        </div>
			        </div>
	            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	 
		            <div class="form-actions">
		            	<div class="col-md-12 col-xs-12">
		                	<button class="btn  btn-lg btn-block btn-main-color" type="submit" class="btn">Sign Up</button>
		                </div>
		            </div>
	        	</fieldset>
	   		</form>
		</div>
	</div>
</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

