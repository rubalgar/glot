<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<script src="<c:url value="/resources/js/highcharts.js" />"
	type="text/javascript"></script>
<title><fmt:message key="title" /></title>
</head>
<body>
	<h1>
		<fmt:message key="heading" />
	</h1>
	<p>
		<c:out value="${model.now}" />
	</p>
	<br>
	<div id="chart" style="height: 400px"></div>
	<script type="text/javascript">
		Highcharts.chart('chart', {
			title : {
				text : 'Mensual Total'
			},
			subtitle : {
				text : 'Gas'
			},
			yAxis : {
				title : {
					text : 'Eur'
				}
			},
			legend : {
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle'
			},
			xAxis: {
							
				categories: [ <c:forEach var="t" items="${model.t}" varStatus="loop">
				'<fmt:formatDate pattern="MM-yyyy" value="${t.fecha}"/>'<c:if test="${!loop.last}">,</c:if>
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
				name : 'Prem',
				data : [ <c:forEach var="t" items="${model.t}" varStatus="loop">
				[<fmt:formatNumber value="${t.premio}" maxFractionDigits="0" groupingUsed="false" type="number" />]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Importe',
				data : [ <c:forEach var="t" items="${model.t}" varStatus="loop">
				[<fmt:formatNumber value="${t.importe}" maxFractionDigits="0" groupingUsed="false" type="number" />]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Perdida',
				data : [ <c:forEach var="t" items="${model.t}" varStatus="loop">
				[<fmt:formatNumber value="${t.perdida}" maxFractionDigits="0" groupingUsed="false" type="number" />]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,

			]
		});
	</script>
<a href="/glot">Volver</a>
</body>
</html>