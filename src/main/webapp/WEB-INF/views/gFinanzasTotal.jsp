<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<script src="<c:url value="/resources/js/highcharts.js" />"
	type="text/javascript"></script>
<title><fmt:message key="title" /></title>

<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>


<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">GLOT</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Totales <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Individual<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Tablas<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>

				<li><a href="gFinanzasTotal" class="active">Finanzas</a></li>
			</ul>
		</div>
	</nav>
	<br>
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
<a href="/glot">Volver</a>
</body>
</html>