package com.dycec.glot.services;

import java.util.List;

import com.dycec.glot.domain.Agregado;
import com.dycec.glot.domain.Finanza;
import com.dycec.glot.mappers.FinanzaMapper;


public class FinanzaService {
	
    private FinanzaMapper finanzaMapper;
    
    public void setFinanzaMapper(FinanzaMapper finanzaMapper){
        this.finanzaMapper = finanzaMapper;
    }

 
    public List<Finanza> obtenerFinanzas(){
        return this.finanzaMapper.getFinanzas();
    }

}
