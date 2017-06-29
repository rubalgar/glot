package com.ralonso.glot.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ralonso.glot.domain.Agregado;
import com.ralonso.glot.domain.Finanza;
import com.ralonso.glot.services.AgregadoService;
import com.ralonso.glot.services.FinanzaService;
import com.ralonso.glot.util.Utils;

@ComponentScan("com.ralonso.glot.services")
@Controller
public class GrafsController {

	protected final Log logger = LogFactory.getLog(getClass());
	
	 @Autowired
	 private FinanzaService finanzaService;
	

	@RequestMapping(value = "/gImporteMensual")
	public ModelAndView hImporteMensual(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		myModel.put("b", agregadoService.obtenerAgregadosPorJuego("BONOLOTO"));
		myModel.put("p", agregadoService.obtenerAgregadosPorJuego("PRIMITIVA"));
		myModel.put("g", agregadoService.obtenerAgregadosPorJuego("GORDO"));
		myModel.put("e", agregadoService.obtenerAgregadosPorJuego("EUROMILLON"));
		myModel.put("nj", agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES"));
		myModel.put("ns", agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO"));
		myModel.put("ne", agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL"));
		myModel.put("nex", agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO"));
		myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));
		myModel.put("q", agregadoService.obtenerAgregadosPorJuego("QUINIELA"));
		myModel.put("o", agregadoService.obtenerAgregadosPorJuego("ONCE"));

		return new ModelAndView("gImporteMensual", "model", myModel);
	}

	@RequestMapping(value = "/gPerdidaMensual")
	public ModelAndView hPerdidaMensual(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		myModel.put("b", agregadoService.obtenerAgregadosPorJuego("BONOLOTO"));
		myModel.put("p", agregadoService.obtenerAgregadosPorJuego("PRIMITIVA"));
		myModel.put("g", agregadoService.obtenerAgregadosPorJuego("GORDO"));
		myModel.put("e", agregadoService.obtenerAgregadosPorJuego("EUROMILLON"));
		myModel.put("nj", agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES"));
		myModel.put("ns", agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO"));
		myModel.put("ne", agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL"));
		myModel.put("nex", agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO"));
		myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));
		myModel.put("q", agregadoService.obtenerAgregadosPorJuego("QUINIELA"));
		myModel.put("o", agregadoService.obtenerAgregadosPorJuego("ONCE"));

		return new ModelAndView("gPerdidaMensual", "model", myModel);
	}

	@RequestMapping(value = "/gPremMensual")
	public ModelAndView hPremMensual(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		myModel.put("b", agregadoService.obtenerAgregadosPorJuego("BONOLOTO"));
		myModel.put("p", agregadoService.obtenerAgregadosPorJuego("PRIMITIVA"));
		myModel.put("g", agregadoService.obtenerAgregadosPorJuego("GORDO"));
		myModel.put("e", agregadoService.obtenerAgregadosPorJuego("EUROMILLON"));
		myModel.put("nj", agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES"));
		myModel.put("ns", agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO"));
		myModel.put("ne", agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL"));
		myModel.put("nex", agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO"));
		myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));
		myModel.put("q", agregadoService.obtenerAgregadosPorJuego("QUINIELA"));
		myModel.put("o", agregadoService.obtenerAgregadosPorJuego("ONCE"));

		return new ModelAndView("gPremMensual", "model", myModel);
	}

	@RequestMapping(value = "/gImporteAcumulado")
	public ModelAndView hImporteAcumulado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> bList = agregadoService.obtenerAgregadosPorJuego("BONOLOTO");
		List<Agregado> pList = agregadoService.obtenerAgregadosPorJuego("PRIMITIVA");
		List<Agregado> gList = agregadoService.obtenerAgregadosPorJuego("GORDO");
		List<Agregado> qList = agregadoService.obtenerAgregadosPorJuego("QUINIELA");
		List<Agregado> eList = agregadoService.obtenerAgregadosPorJuego("EUROMILLON");
		List<Agregado> njList = agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES");
		List<Agregado> nsList = agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO");
		List<Agregado> nesList = agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL");
		List<Agregado> nexList = agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO");
		List<Agregado> oList = agregadoService.obtenerAgregadosPorJuego("ONCE");
			
		
		myModel.put("b", Utils.calculaAcumuladoImporte(bList));
		myModel.put("p", Utils.calculaAcumuladoImporte(pList));
		myModel.put("g", Utils.calculaAcumuladoImporte(gList));
		myModel.put("e", Utils.calculaAcumuladoImporte(eList));
		myModel.put("q", Utils.calculaAcumuladoImporte(qList));
		myModel.put("nj", Utils.calculaAcumuladoImporte(njList));
		myModel.put("ns", Utils.calculaAcumuladoImporte(nsList));
		myModel.put("nes", Utils.calculaAcumuladoImporte(nesList));
		myModel.put("nex", Utils.calculaAcumuladoImporte(nexList));
		myModel.put("o", Utils.calculaAcumuladoImporte(oList));
		
		/*myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));*/

		
		return new ModelAndView("gImporteAcumulado", "model", myModel);
	}
	
	@RequestMapping(value = "/gPremAcumulado")
	public ModelAndView hPremAcumulado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> bList = agregadoService.obtenerAgregadosPorJuego("BONOLOTO");
		List<Agregado> pList = agregadoService.obtenerAgregadosPorJuego("PRIMITIVA");
		List<Agregado> gList = agregadoService.obtenerAgregadosPorJuego("GORDO");
		List<Agregado> qList = agregadoService.obtenerAgregadosPorJuego("QUINIELA");
		List<Agregado> eList = agregadoService.obtenerAgregadosPorJuego("EUROMILLON");
		List<Agregado> njList = agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES");
		List<Agregado> nsList = agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO");
		List<Agregado> nesList = agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL");
		List<Agregado> nexList = agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO");
		List<Agregado> oList = agregadoService.obtenerAgregadosPorJuego("ONCE");
		
		myModel.put("b", Utils.calculaAcumuladoPrem(bList));
		myModel.put("p", Utils.calculaAcumuladoPrem(pList));
		myModel.put("g", Utils.calculaAcumuladoPrem(gList));
		myModel.put("e", Utils.calculaAcumuladoPrem(eList));
		myModel.put("q", Utils.calculaAcumuladoPrem(qList));
		myModel.put("nj", Utils.calculaAcumuladoPrem(njList));
		myModel.put("ns", Utils.calculaAcumuladoPrem(nsList));
		myModel.put("nes", Utils.calculaAcumuladoPrem(nesList));
		myModel.put("nex", Utils.calculaAcumuladoPrem(nexList));
		myModel.put("o", Utils.calculaAcumuladoPrem(oList));
		
		/*myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));*/

		return new ModelAndView("gPremAcumulado", "model", myModel);
	}
	
	@RequestMapping(value = "/gPerdidaAcumulado")
	public ModelAndView hPerdidaAcumulado(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> bList = agregadoService.obtenerAgregadosPorJuego("BONOLOTO");
		List<Agregado> pList = agregadoService.obtenerAgregadosPorJuego("PRIMITIVA");
		List<Agregado> gList = agregadoService.obtenerAgregadosPorJuego("GORDO");
		List<Agregado> qList = agregadoService.obtenerAgregadosPorJuego("QUINIELA");
		List<Agregado> eList = agregadoService.obtenerAgregadosPorJuego("EUROMILLON");
		List<Agregado> njList = agregadoService.obtenerAgregadosPorJuego("NACIONAL JUEVES");
		List<Agregado> nsList = agregadoService.obtenerAgregadosPorJuego("NACIONAL SABADO");
		List<Agregado> nesList = agregadoService.obtenerAgregadosPorJuego("NACIONAL ESPECIAL");
		List<Agregado> nexList = agregadoService.obtenerAgregadosPorJuego("NACIONAL EXTRAORDINARIO");
		List<Agregado> oList = agregadoService.obtenerAgregadosPorJuego("ONCE");
		
		myModel.put("b", Utils.calculaAcumuladoPerdida(bList));
		myModel.put("p", Utils.calculaAcumuladoPerdida(pList));
		myModel.put("g", Utils.calculaAcumuladoPerdida(gList));
		myModel.put("e", Utils.calculaAcumuladoPerdida(eList));
		myModel.put("q", Utils.calculaAcumuladoPerdida(qList));
		myModel.put("nj", Utils.calculaAcumuladoPerdida(njList));
		myModel.put("ns", Utils.calculaAcumuladoPerdida(nsList));
		myModel.put("nes", Utils.calculaAcumuladoPerdida(nesList));
		myModel.put("nex", Utils.calculaAcumuladoPerdida(nexList));
		myModel.put("o", Utils.calculaAcumuladoPerdida(oList));
		
		
		
		
		/*myModel.put("nni", agregadoService.obtenerAgregadosPorJuego("NACIONAL NIÑO"));
		myModel.put("nna", agregadoService.obtenerAgregadosPorJuego("NACIONAL NAVIDAD"));*/

		return new ModelAndView("gPerdidaAcumulado", "model", myModel);
	}
	
	@RequestMapping(value = "/gImporteMensualTotal")
	public ModelAndView hImporteMensualTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("t", tList);
				
		return new ModelAndView("gImporteMensualTotal", "model", myModel);
	}
	@RequestMapping(value = "/gPerdidaMensualTotal")
	public ModelAndView hPerdidaMensualTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("t", tList);
				
		return new ModelAndView("gPerdidaMensualTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gImporteAcumuladoTotal")
	public ModelAndView hImporteAcumuladoTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("ta", Utils.calculaAcumuladoImporte(tList));
				
		return new ModelAndView("gImporteAcumuladoTotal", "model", myModel);
	}
	@RequestMapping(value = "/gPerdidaAcumuladoTotal")
	public ModelAndView hPerdidaAcumuladoTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("ta", Utils.calculaAcumuladoPerdida(tList));
				
		return new ModelAndView("gPerdidaAcumuladoTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gPremMensualTotal")
	public ModelAndView hPremMensualTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("t", tList);
				
		return new ModelAndView("gPremMensualTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gPremAcumuladoTotal")
	public ModelAndView hPremAcumuladoTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("ta", Utils.calculaAcumuladoPrem(tList));
				
		return new ModelAndView("gPremAcumuladoTotal", "model", myModel);
	}
	@RequestMapping(value = "/gMensualTotal")
	public ModelAndView hMensualTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("t", tList);
				
		return new ModelAndView("gMensualTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gAcumuladoTotal")
	public ModelAndView hAcumuladoTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosTotal();
		myModel.put("ta", Utils.calculaAcumulado(tList));
				
		return new ModelAndView("gAcumuladoTotal", "model", myModel);
	}
	
	
	@RequestMapping(value = "/gMensual/{juego}")
	public ModelAndView hMensual(@PathVariable String juego)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosPorJuego(juego);
		myModel.put("t", tList);
				
		return new ModelAndView("gMensualTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gAcumulado/{juego}")
	public ModelAndView hAcumulado(@PathVariable String juego)
			throws ServletException, IOException {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		AgregadoService agregadoService = (AgregadoService) context.getBean("agregadoService");

		
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Agregado> tList = agregadoService.obtenerAgregadosPorJuego(juego);
		myModel.put("ta", Utils.calculaAcumulado(tList));
				
		return new ModelAndView("gAcumuladoTotal", "model", myModel);
	}
	
	@RequestMapping(value = "/gFinanzasTotal")
	public ModelAndView hFinanzasTotal(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*ApplicationContext context = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		FinanzaService finanzaService = (FinanzaService) context.getBean("finanzaService");*/
		Map<String, Object> myModel = new HashMap<String, Object>();
		
		List<Finanza> tList = finanzaService.obtenerFinanzas();
		myModel.put("f", tList);
	
		return new ModelAndView("gFinanzasTotal", "model", myModel);
	}
	
}