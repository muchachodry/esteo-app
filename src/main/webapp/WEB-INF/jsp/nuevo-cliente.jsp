<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="../jspf/header.jspf"%>
<div class="container">
	<div class="row main-row margin">
		<h1>Nuevo Cliente</h1>
		<div class="col-12">
			<form action="/osteo-app/addClient" method="post">               
	        	<fieldset>
	        		<h2 class="rntitle">Datos Personales</h2>
	        		<div class="row rnclient">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Nombre</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="off" type="text" name="nombre"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Apellidos</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="apellido"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Fecha de nacimiento</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="date" name="fecha_nacimiento"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Edad</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="edad" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Sexo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<select class="form-fdos" autocomplete="off" name="sexo">
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
			        			<label class="col-sm-3 col-form-label">Embarazo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<select class="form-fdos" autocomplete="no" type="text" name="embarazo">
									        <option value="NO" selected>No</option>
									        <option value="SI">Si</option>
						            	</select>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Dirección</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="direccion"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Teléfono</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="telf_fijo" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Teléfono movil</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="telf_movil"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Correo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="correo" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
			        </div>
			        <h2 class="rntitle">Datos Adicionales</h2>
	        		<div class="row rnclient">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Trabajo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="off" type="text" name="trabajo"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Horas trabajo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="horas_trabajo" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Deporte</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<select class="form-fdos" autocomplete="no" name="Deporte" disabled>
							            	<option value="SI" selected>Si</option>
									        <option value="NO">No</option>
						            	</select>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Horas deporte</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="horas_deporte" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
			        </div>
			        <h2 class="rntitle">Hábitos</h2>
	        		<div class="row rnclient">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Comidas dia</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="off" type="text" name="comidas_dia"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Agua Cantidad</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" type="text" name="cantidad_agua"/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Frut, Pesc, Verd</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
						            	<input class="form-check-input" type="radio" name="fruta_verdura_pescado"  value="SI" checked disabled>
							          	<label class="form-check-label" for="fruta_verdura_pescado">SI</label>
					            	</div>
									<div class="col-3">
							          	<input class="form-check-input" type="radio" name="fruta_verdura_pescado"  value="No" disabled>
							          	<label class="form-check-label" for="fruta_verdura_pescado">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Sueño Reparador</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" checked disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Postura dormir</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="cantidad_agua" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Transito</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<select class="form-fdos" autocomplete="no" name="transito" disabled>
							            	<option value="BIEN" selected>Bien</option>
									        <option value="MAL">Mal</option>
									        <option value="REGULAR">REGULAR</option>
						            	</select>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Cada cuanto</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" type="text" name="cuanto_wc" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
			        </div>
			        <!-- MUST FINISH -->
			        <h2 class="rntitle">Contraindicaciones</h2>
	        		<div class="row rnclient">
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Fiebre</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
						            	<input class="form-check-input" type="radio" name="fruta_verdura_pescado"  value="SI" disabled>
							          	<label class="form-check-label" for="fruta_verdura_pescado">SI</label>
					            	</div>
									<div class="col-3">
							          	<input class="form-check-input" type="radio" name="fruta_verdura_pescado"  value="No" checked disabled>
							          	<label class="form-check-label" for="fruta_verdura_pescado">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Roturas oseas</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Taquicardias</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Osteoporosis</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Ganglios Inflamados</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Hipertensión</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled> 
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Cancer</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">SIDA</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Infección</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Flebitis</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Embolias</label>
					            <div class="col-sm-9 row">
					            	<div class="col-3">
							            <input class="form-check-input" type="radio" name="sueno_reparador"  value="SI" disabled>
							          	<label class="form-check-label" for="sueno_reparador">SI</label>
						          	</div>
						          	<div class="col-3">
						          		<input class="form-check-input" type="radio" name="sueno_reparador"  value="No" checked disabled>
						          		<label class="form-check-label" for="sueno_reparador">NO</label>
					            	</div>
					            </div>
					        </div>
				        </div>
			        </div>
			        <h2 class="rntitle">Alergias</h2>
	        		<div class="row rnclient">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Alergias</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="off" type="text" name="alergias"/>
						            </div>
					            </div>
					        </div>
				        </div>
			        </div>
			        <h2 class="rntitle">Motivo de la consulta</h2>
	        		<div class="row rnclient">
	        			<div class="col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Motivo</label>
					            <div class="col-sm-9">
					            	<div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="off" type="text" name="alergias" disabled></input>
					            	</div>
					            </div>
					        </div>
				        </div>
				        <div class="col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">rango dolor</label>
					            <div class="col-sm-9">
						            <input type="range" min="1" max="5" class="form-control-range" name="rango" disabled>
					            </div>
					        </div>
				        </div>
			        </div>
			        <h2 class="rntitle">Diagnostico Medico</h2>
				    <textarea class="rnclient expandw" autocomplete="off" name="diagnostico" disabled></textarea>
			        <h2 class="rntitle">Observaciones</h2>
	    			<textarea class="rnclient expandw" autocomplete="off" type="text" name="observaciones" disabled></textarea>
	            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	 
		            <div class="form-actions">
		            	<div class="col-md-12 col-xs-12">
		                	<button class="btn btn-lg btn-primary log-in-btn bg-morado btnmsbmt" type="submit">Nuevo Cliente</button>
		                </div>
		            </div>
	        	</fieldset>
	   		</form>
		</div>
	</div>
</div>
</div>
<%@ include file="../jspf/footer.jspf"%>

