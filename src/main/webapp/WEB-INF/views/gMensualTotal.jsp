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
