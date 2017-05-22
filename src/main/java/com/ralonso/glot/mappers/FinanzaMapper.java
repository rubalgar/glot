package com.ralonso.glot.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.ralonso.glot.domain.Finanza;

public interface FinanzaMapper {
	@Results({ @Result(property = "fecha", column = "fecha"), @Result(property = "ahorro", column = "ahorro"),
			@Result(property = "depositoCoinc", column = "deposito_coinc"), @Result(property = "depositoIng", column = "deposito_ing"),
			@Result(property = "cuentaNaranja", column = "cuenta_naranja"), @Result(property = "cuentaNomina", column = "cuenta_nomina"),
			@Result(property = "planPensiones", column = "plan_pensiones"), @Result(property = "hipoteca", column = "hipoteca"),
			@Result(property = "deudas", column = "deudas"),})

	@Select("SELECT fecha,ahorro,deposito_coinc,deposito_ing,cuenta_naranja,cuenta_nomina,plan_pensiones,hipoteca,deudas FROM finanzas order by fecha")
	List<Finanza> getFinanzas();
	
}
