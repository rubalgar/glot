
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/glot/gFinanzasTotal">GLOT</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Totales <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/glot/gMensualTotal">Mensual</a></li>
						<li><a href="/glot/gAcumuladoTotal">Acumulado</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Individuales<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/glot/gMensual/BONOLOTO">B Mensual</a></li>
						<li><a href="/glot/gAcumulado/BONOLOTO">B Acumulado</a></li>
						<li><a href="/glot/gMensual/PRIMITIVA">P Mensual</a></li>
						<li><a href="/glot/gAcumulado/PRIMITIVA">P Acumulado</a></li>
						<li><a href="/glot/gMensual/GORDO">G Mensual</a></li>
						<li><a href="/glot/gAcumulado/GORDO">G Acumulado</a></li>
						<li><a href="/glot/gMensual/QUINIELA">Q Mensual</a></li>
						<li><a href="/glot/gAcumulado/QUINIELA">Q Acumulado</a></li>
						<li><a href="/glot/gMensual/ONCE">O Mensual</a></li>
						<li><a href="/glot/gAcumulado/ONCE">O Acumulado</a></li>
						<li><a href="/glot/gMensual/NACIONAL JUEVES">NJ Mensual</a></li>
						<li><a href="/glot/gAcumulado/NACIONAL JUEVES">NJ Acumulado</a></li>
						<li><a href="/glot/gMensual/NACIONAL SABADO">NS Mensual</a></li>
						<li><a href="/glot/gAcumulado/NACIONAL SABADO">NS Acumulado</a></li>
						<li><a href="/glot/gMensual/NACIONAL ESPECIAL">NES Mensual</a></li>
						<li><a href="/glot/gAcumulado/NACIONAL ESPECIAL">NES Acumulado</a></li>
						<li><a href="/glot/gMensual/NACIONAL EXTRAORDINARIO">NEX Mensual</a></li>
						<li><a href="/glot/gAcumulado/NACIONAL EXTRAORDINARIO">NEX Acumulado</a></li>
				</ul></li>
				
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Comparativa<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/glot/gImporteMensual">Importe Mensual</a></li>
						<li><a href="/glot/gImporteAcumulado">Importe Acumulado</a></li>
						<li><a href="/glot/gPerdidaMensual">Perdida Mensual</a></li>
						<li><a href="/glot/gPerdidaAcumulado">Perdida Acumulado</a></li>
						<li><a href="/glot/gPremMensual">Premio Mensual</a></li>
						<li><a href="/glot/gPremAcumulado">Premio Acumulado</a></li>
						
					</ul></li>
<!--  				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tablas<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
-->

				<!-- <li><a href="gFinanzasTotal" class="active">Finanzas</a></li> -->
			</ul>
		</div>
	</nav>
