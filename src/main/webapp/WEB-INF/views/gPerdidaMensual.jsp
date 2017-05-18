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
				text : 'Perdida'
			},
			subtitle : {
				text : 'Gas'
			},
			yAxis : {
				title : {
					text : 'Perdida'
				}
			},
			legend : {
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle'
			},
			xAxis: {
							
				categories: [ <c:forEach var="b" items="${model.b}" varStatus="loop">
				'<fmt:formatDate pattern="MM-yyyy" value="${b.fecha}"/>'<c:if test="${!loop.last}">,</c:if>
				</c:forEach>],
			},
			series : [ 
				{
				name : 'B',
				data : [ <c:forEach var="b" items="${model.b}" varStatus="loop">
				[${b.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'P',
				data : [ <c:forEach var="p" items="${model.p}" varStatus="loop">
						[${p.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'G',
				data : [ <c:forEach var="g" items="${model.g}" varStatus="loop">
						[${g.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Q',
				data : [ <c:forEach var="q" items="${model.q}" varStatus="loop">
						[${q.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NJ',
				data : [ <c:forEach var="nj" items="${model.nj}" varStatus="loop">
						[${nj.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'O',
				data : [ <c:forEach var="o" items="${model.o}" varStatus="loop">
						[${o.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NS',
				data : [ <c:forEach var="ns" items="${model.ns}" varStatus="loop">
						[${ns.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NES',
				data : [ <c:forEach var="nes" items="${model.nes}" varStatus="loop">
						[${nes.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NEX',
				data : [ <c:forEach var="nex" items="${model.nex}" varStatus="loop">
						[${nex.perdida}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			/*{
				name : 'NNA',
				data : [ <c:forEach var="nna" items="${model.nna}" varStatus="loop">
						[${nna.importe}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NNI',
				data : [ <c:forEach var="nni" items="${model.nni}" varStatus="loop">
						[${nni.importe}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,*/


			]
		});
	</script>
<a href="/glot">Volver</a>
</body>
</html>