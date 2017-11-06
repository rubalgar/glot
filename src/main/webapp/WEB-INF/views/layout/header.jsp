
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/gFinanzasTotal">GLOT</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Totales <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=request.getContextPath()%>/gMensualTotal">Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumuladoTotal">Acumulado</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Individuales<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=request.getContextPath()%>/gMensual/BONOLOTO">B Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/BONOLOTO">B Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/PRIMITIVA">P Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/PRIMITIVA">P Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/GORDO">G Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/GORDO">G Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/QUINIELA">Q Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/QUINIELA">Q Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/ONCE">O Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/ONCE">O Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/NACIONAL JUEVES">NJ Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/NACIONAL JUEVES">NJ Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/NACIONAL SABADO">NS Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/NACIONAL SABADO">NS Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/NACIONAL ESPECIAL SABADO">NES Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/NACIONAL ESPECIAL SABADO">NES Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/NACIONAL EXTRAORDINARIO">NEX Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/NACIONAL EXTRAORDINARIO">NEX Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gMensual/EUROMILLON">E Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gAcumulado/EUROMILLON">E Acumulado</a></li>
						
				</ul></li>
				
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Comparativa<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<%=request.getContextPath()%>/gImporteMensual">Importe Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gImporteAcumulado">Importe Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gPerdidaMensual">Perdida Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gPerdidaAcumulado">Perdida Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gPremMensual">Premio Mensual</a></li>
						<li><a href="<%=request.getContextPath()%>/gPremAcumulado">Premio Acumulado</a></li>
						<li><a href="<%=request.getContextPath()%>/gPorcentajeMensual">Porcentaje</a></li>
					</ul></li>
<!--  				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tablas<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
-->

				<!-- <li><a href="gFinanzasTotal" class="active">Finanzas</a></li>--> 
			</ul>
		</div>
	</nav>
