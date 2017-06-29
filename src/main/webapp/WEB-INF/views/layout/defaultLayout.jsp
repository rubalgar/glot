<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>

<title><fmt:message key="title" /></title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
</head>

<body>
	<div>
		<div class="container" style="margin: 10px">
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="body" />
			<tiles:insertAttribute name="footer" />
		</div>
</body>
<script src="<c:url value="/resources/js/highcharts.js" />"
	type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"
	type="text/javascript"></script>
</html>
