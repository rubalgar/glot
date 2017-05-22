package com.ralonso.glot.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.ralonso.glot.domain.Agregado;

public interface AgregadoMapper {
	@Results({ @Result(property = "fecha", column = "fecha"), @Result(property = "juego", column = "juego"),
			@Result(property = "importe", column = "importe"), @Result(property = "premio", column = "premio"),
			@Result(property = "perdida", column = "perdida"), })

	@Select("SELECT fecha,juego,importe,premio,perdida FROM agregados order by fecha")
	List<Agregado> getAgregados();
	
	@Select("SELECT fecha,juego,importe,premio,perdida FROM agregados where juego=#{juego} order by fecha")
	List<Agregado> getAgregadosPorJuego(String juego);
	
	@Select("SELECT fecha,SUM(importe) as importe,SUM(perdida) as perdida, SUM(premio) as premio FROM agregados group by fecha order by fecha")
	List<Agregado> getAgregadosTotal();
}
