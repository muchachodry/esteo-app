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
			<div ng-if="status.select == null">
				<h2>Seleccion</h2>
			</div>
			<div ng-if="status.select != null">
				<h2>Información del Cliente ID: {{data.selectedClient.id}}</h2>
				<div class="client-info-container">
					<h2 class="rntitle">Datos Personales</h2>
	        		<div class="row rnclient">
	        			<div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Nombre</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" value="{{data.selectedClient.nombre}}" autocomplete="off" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Apellidos</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" value="{{data.selectedClient.apellido}}" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Fecha de nacimiento</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input class="form-fdos" autocomplete="no" value="{{data.selectedClient.fecha_nacimiento}}" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Edad</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input class="form-fdos" autocomplete="no" value="{{data.selectedClient.edad}}"  type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Sexo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.sexo}}" class="form-fdos" autocomplete="off" disabled>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Embarazo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.embarazo}}" class="form-fdos" autocomplete="off" disabled>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Dirección</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.direccion}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Teléfono</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input value="{{data.selectedClient.telf_fijo}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Teléfono movil</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.telf_movil}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Correo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input value="{{data.selectedClient.correo}}" class="form-fdos" autocomplete="no" type="text" disabled/>
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
						            	<input value="{{data.selectedClient.trabajo}}" class="form-fdos" autocomplete="off" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Horas trabajo</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input value="{{data.selectedClient.horas_trabajo}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Deporte</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.deporte}}" class="form-fdos" autocomplete="no" type="text" disabled/>
					            	</div>
					        	</div>
				        	</div>
			        	</div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Horas deporte</label>
					            <div class="col-sm-9">
						            <div class="ib-nc disable-input-ac">
						            	<input value="{{data.selectedClient.horas_deporte}}" class="form-fdos" autocomplete="no" type="text" name="horas_deporte" disabled/>
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
						            	<input value="{{data.selectedClient.comidas_dia}}" class="form-fdos" autocomplete="off" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Agua Cantidad</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.cantidad_agua}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Frut, Pesc, Verd</label>
					            <div class="col-sm-9">
					           		<div class="ib-nc">
						            	<input value="{{data.selectedClient.fruta_verdura_pescado}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Sueño Reparador</label>
					            <div class="col-sm-9">
					            	<div class="ib-nc">
						            	<input value="{{data.selectedClient.sueno_reparador}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Postura dormir</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.cantidad_agua}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Transito</label>
					            <div class="col-sm-9">
						             <div class="ib-nc">
						            	<input value="{{data.selectedClient.transito}}" class="form-fdos" autocomplete="no" type="text" disabled/>
						            </div>
					            </div>
					        </div>
				        </div>
				        <div class="col-md-6 col-12">
			        		<div class="form-group row">
			        			<label class="col-sm-3 col-form-label">Cada cuanto</label>
					            <div class="col-sm-9">
						            <div class="ib-nc">
						            	<input value="{{data.selectedClient.transito_wc}}" class="form-fdos" autocomplete="no" type="text" disabled/>
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

