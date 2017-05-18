package com.dycec.glot.services;

import java.util.List;

import com.dycec.glot.domain.Agregado;
import com.dycec.glot.mappers.AgregadoMapper;


public class AgregadoService {
	
    private AgregadoMapper agregadoMapper;
    
    public void setAgregadoMapper(AgregadoMapper agregadoMapper){
        this.agregadoMapper = agregadoMapper;
    }

 
    public List<Agregado> obtenerAgregados(){
        return this.agregadoMapper.getAgregados();
    }
    
    public List<Agregado> obtenerAgregadosPorJuego(String juego){
        return this.agregadoMapper.getAgregadosPorJuego(juego);
    }

    public List<Agregado> obtenerAgregadosTotal(){
        return this.agregadoMapper.getAgregadosTotal();
    }

}
