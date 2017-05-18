package com.dycec.glot.domain;

import java.util.Date;

public class Agregado {
    private Date fecha;
    private String juego;
    private double importe;
    private double premio;
    private double perdida;
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getJuego() {
		return juego;
	}
	public void setJuego(String juego) {
		this.juego = juego;
	}
	public double getImporte() {
		return importe;
	}
	public void setImporte(double importe) {
		this.importe = importe;
	}
	public double getPremio() {
		return premio;
	}
	public void setPremio(double premio) {
		this.premio = premio;
	}
	public double getPerdida() {
		return perdida;
	}
	public void setPerdida(double perdida) {
		this.perdida = perdida;
	}
    
    
        
    }
