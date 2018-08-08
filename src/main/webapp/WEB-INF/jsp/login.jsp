<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="container">
	<div class="row align-items-center">
		<div class="col-4 offset-4 align-self-center">	
		    <form action="/osteo-app/login" method="post">               
		        <fieldset>
		            <legend>Acceso: </legend>
		            <div class="form-group">
		            	<div class="input-bar">
			            	<input class="ibs" value="" placeholder="Usuario" type="text" name="username"/>
			        	</div>
			        	<div class="input-bar">
			        		<input class="ibs" value="" placeholder="Password" id="password" name="password" type="password">
			        	</div>
			        </div>    
			        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		            <div class="form-actions">
		            	<div class="col-4 offset-4">
		                	<button class="btn btn-lg btn-primary log-in-btn bg-morado" type="submit">Entrar</button>
		                </div>
		                <!-- <div class="col-md-6 col-xs-12">
		               	 <a href="/registro" class="btn  btn-lg btn-block btn-main-color"  class="btn">Sign up</a>
		                </div> -->
		            </div>
		        </fieldset>
		    </form>
		</div>
		<%@ include file="../jspf/authinfo.jspf"%>	
	</div>	
</div>

<%@ include file="../jspf/footer.jspf"%>
