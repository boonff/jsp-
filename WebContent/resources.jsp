<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>文章列表</title>
</head>
<body>
	<h1>学习文章</h1>

	<div>
		<c:forEach items="${requestScope.resources_list}" var="resource">
			<div>
				<h2>${resource.title}</h2>
				<p>${resource.content}</p>
			</div>
		</c:forEach>
	</div>

</body>
</html>
