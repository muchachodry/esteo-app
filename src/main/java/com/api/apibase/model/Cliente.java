package com.api.apibase.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@Entity
@Table(name="clientes")
public class Cliente {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String nombre;
	private String apellido;
	private Date fecha_nacimiento;
	@Column(nullable=true)
	private Integer telf_movil;
	private String sexo;
	private String embarazo;
	private String trabajo;
	private Float comidas_dia;
	private Float cantidad_agua;
	private String fruta_verdura_pescado;
	private Float horas_sueno;
	private String operaciones;
	private String alergias;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}
	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}
	public Integer getTelf_movil() {
		return telf_movil;
	}
	public void setTelf_movil(Integer telf_movil) {
		this.telf_movil = telf_movil;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getEmbarazo() {
		return embarazo;
	}
	public void setEmbarazo(String embarazo) {
		this.embarazo = embarazo;
	}
	public String getTrabajo() {
		return trabajo;
	}
	public void setTrabajo(String trabajo) {
		this.trabajo = trabajo;
	}
	public Float getComidas_dia() {
		return comidas_dia;
	}
	public void setComidas_dia(Float comidas_dia) {
		this.comidas_dia = comidas_dia;
	}
	public Float getCantidad_agua() {
		return cantidad_agua;
	}
	public void setCantidad_agua(Float cantidad_agua) {
		this.cantidad_agua = cantidad_agua;
	}
	public String getFruta_verdura_pescado() {
		return fruta_verdura_pescado;
	}
	public void setFruta_verdura_prescado(String fruta_verdura_pescado) {
		this.fruta_verdura_pescado = fruta_verdura_pescado;
	}
	public Float getHoras_sueno() {
		return horas_sueno;
	}
	public void setHoras_sueno(Float horas_sueno) {
		this.horas_sueno = horas_sueno;
	}
	public String getOperaciones() {
		return operaciones;
	}
	public void setOperaciones(String operaciones) {
		this.operaciones = operaciones;
	}
	public String getAlergias() {
		return alergias;
	}
	public void setAlergias(String alergias) {
		this.alergias = alergias;
	}

}
