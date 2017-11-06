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
				text : 'Prem'
			},
			subtitle : {
				text : 'Gas'
			},
			yAxis : {
				title : {
					text : 'Prem'
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
				[${b.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'P',
				data : [ <c:forEach var="p" items="${model.p}" varStatus="loop">
						[${p.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'G',
				data : [ <c:forEach var="g" items="${model.g}" varStatus="loop">
						[${g.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'Q',
				data : [ <c:forEach var="q" items="${model.q}" varStatus="loop">
						[${q.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NJ',
				data : [ <c:forEach var="nj" items="${model.nj}" varStatus="loop">
						[${nj.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'O',
				data : [ <c:forEach var="o" items="${model.o}" varStatus="loop">
						[${o.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NS',
				data : [ <c:forEach var="ns" items="${model.ns}" varStatus="loop">
						[${ns.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NES',
				data : [ <c:forEach var="nes" items="${model.nes}" varStatus="loop">
						[${nes.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'NEX',
				data : [ <c:forEach var="nex" items="${model.nex}" varStatus="loop">
						[${nex.premio}]<c:if test="${!loop.last}">,</c:if>
					</c:forEach>],
			} ,
			{
				name : 'E',
				data : [ <c:forEach var="e" items="${model.e}" varStatus="loop">
						[${e.premio}]<c:if test="${!loop.last}">,</c:if>
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
