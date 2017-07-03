<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>

<!-- <title><fmt:message key="title" /></title>-->
<title>GLOT</title>

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
</html>
