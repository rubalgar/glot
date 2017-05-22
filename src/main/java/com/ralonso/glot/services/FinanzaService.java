package com.ralonso.glot.services;

import java.util.List;

import com.ralonso.glot.domain.Agregado;
import com.ralonso.glot.domain.Finanza;
import com.ralonso.glot.mappers.FinanzaMapper;


public class FinanzaService {
	
    private FinanzaMapper finanzaMapper;
    
    public void setFinanzaMapper(FinanzaMapper finanzaMapper){
        this.finanzaMapper = finanzaMapper;
    }

 
    public List<Finanza> obtenerFinanzas(){
        return this.finanzaMapper.getFinanzas();
    }

}
