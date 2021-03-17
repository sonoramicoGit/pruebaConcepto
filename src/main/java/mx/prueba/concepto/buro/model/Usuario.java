package mx.prueba.concepto.buro.model;

import java.io.Serializable;

public class Usuario implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String nombre;
	private String sexo;//M o F
	private String jovi;// combo
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
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getJovi() {
		return jovi;
	}
	public void setJovi(String jovi) {
		this.jovi = jovi;
	}
	
	
	

}
