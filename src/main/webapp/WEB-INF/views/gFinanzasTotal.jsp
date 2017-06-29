
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
				name : 'Cuenta Naranja',
				data : [ <c:forEach var="f" items="${model.f}" varStatus="loop">
						[${f.cuentaNaranja}]<c:if test="${!loop.last}">,</c:if>
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
