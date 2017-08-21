<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="<c:url value="/resources/js/highcharts.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"
	type="text/javascript"></script>
	<div id="chart" style="height: 400px"></div>
	<script type="text/javascript">
		Highcharts.chart('chart', {
			title : {
				text : 'Finanzas'
			},
			subtitle : {
				text : 'Por Mes'
			},
			yAxis : {
				title : {
					text : 'Importe'
				}
			},
			legend : {
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle'
			},
			xAxis: {
							
				categories: [ <c:forEach var="f" items="${model.f}" varStatus="loop">
				'<fmt:formatDate pattern="MM-yyyy" value="${f.fecha}"/>'<c:if test="${!loop.last}">,</c:if>
				</c:forEach>],
			},
			plotOptions: {
		        line: {
		            dataLabels: {
		                enabled: true
		            },
		            enableMouseTracking: false
		        }
		    },
			series : [ 
				{
				name : 'Ahorro',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
				[${f.ahorro}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Deposito Coinc',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.depositoCoinc}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Deposito Ing',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.depositoIng}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Cuenta Naranja Principal',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.cuentaNaranjaPrincipal}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Cuenta Naranja Secundaria',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.cuentaNaranjaSecundaria}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Cuenta Nomina',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.cuentaNomina}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Plan Pensiones',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.planPensiones}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Hipoteca',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.hipoteca}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Deudas',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.deudas}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			]
		});
	</script>
