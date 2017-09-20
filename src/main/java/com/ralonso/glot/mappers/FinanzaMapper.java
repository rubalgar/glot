package com.ralonso.glot.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.ralonso.glot.domain.Finanza;

public interface FinanzaMapper {
	@Results({ @Result(property = "fecha", column = "fecha"), @Result(property = "ahorro", column = "ahorro"),
			@Result(property = "depositoCoinc", column = "deposito_coinc"), @Result(property = "depositoIng", column = "deposito_ing"),
			@Result(property = "cuentaNaranjaPrincipal", column = "cuenta_naranja_principal"), @Result(property = "cuentaNaranjaSecundaria", column = "cuenta_naranja_secundaria"), @Result(property = "cuentaNomina", column = "cuenta_nomina"),
			@Result(property = "planPensiones", column = "plan_pensiones"), @Result(property = "hipoteca", column = "hipoteca"),
			@Result(property = "deudas", column = "deudas"), @Result(property = "ahorroReal", column = "ahorro_real"), @Result(property = "inversion", column = "inversion")
			})

	@Select("SELECT fecha,ahorro,deposito_coinc,deposito_ing,cuenta_naranja_principal, cuenta_naranja_secundaria, cuenta_nomina,plan_pensiones,hipoteca,deudas,ahorro_real,inversion FROM finanzas order by fecha")
	List<Finanza> getFinanzas();
	
}
