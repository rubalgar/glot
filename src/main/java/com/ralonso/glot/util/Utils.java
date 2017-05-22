package com.ralonso.glot.util;

import java.util.ArrayList;
import java.util.List;

import com.ralonso.glot.domain.Agregado;

public class Utils {
	
	static public List<Agregado> calculaAcumuladoImporte(List<Agregado> iList){
		List<Agregado> rList = new ArrayList<Agregado>();
		int index = 0;
		double acumulado = 0.0;
		for (Agregado temp: iList){
			acumulado += temp.getImporte();
			Agregado nAgregado = new Agregado();
			nAgregado.setFecha(iList.get(index).getFecha());
			nAgregado.setImporte(acumulado);
			rList.add(nAgregado);
			index++;
		}
		return rList;
	}

	static public List<Agregado> calculaAcumuladoPerdida(List<Agregado> iList){
		List<Agregado> rList = new ArrayList<Agregado>();
		int index = 0;
		double acumulado = 0.0;
		for (Agregado temp: iList){
			acumulado += temp.getPerdida();
			Agregado nAgregado = new Agregado();
			nAgregado.setFecha(iList.get(index).getFecha());
			nAgregado.setPerdida(acumulado);
			rList.add(nAgregado);
			index++;
		}
		return rList;
	}

	static public List<Agregado> calculaAcumuladoPrem(List<Agregado> iList){
		List<Agregado> rList = new ArrayList<Agregado>();
		int index = 0;
		double acumulado = 0.0;
		for (Agregado temp: iList){
			acumulado += temp.getPremio();
			Agregado nAgregado = new Agregado();
			nAgregado.setFecha(iList.get(index).getFecha());
			nAgregado.setPremio(acumulado);
			rList.add(nAgregado);
			index++;
		}
		return rList;
	}

	static public List<Agregado> calculaAcumulado(List<Agregado> iList){
		List<Agregado> rList = new ArrayList<Agregado>();
		int index = 0;
		double acumuladoPremio = 0.0;
		double acumuladoImporte = 0.0;
		double acumuladoPerdida = 0.0;
		for (Agregado temp: iList){
			acumuladoPremio += temp.getPremio();
			acumuladoImporte += temp.getImporte();
			acumuladoPerdida += temp.getPerdida();
			Agregado nAgregado = new Agregado();
			nAgregado.setFecha(iList.get(index).getFecha());
			nAgregado.setPremio(acumuladoPremio);
			nAgregado.setPerdida(acumuladoPerdida);
			nAgregado.setImporte(acumuladoImporte);
			rList.add(nAgregado);
			index++;
		}
		return rList;
	}

}
