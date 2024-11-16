<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<title>文章列表</title>
</head>
<body>
	<a href="/PLWeb/learningContent.jsp">home</a>
	<h1>管理文章</h1>
	<!-- 添加文章 -->
	<div>
		<h2>添加文章</h2>
		<form action="/PLWeb/ser/AddResources" method="post">
			<table>
				<tr>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td><textarea name="content" rows="10" cols="50"></textarea></td>
				</tr>
				<tr>
					<td><button>确定</button></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 过滤器 -->
	<div>
		<h1>过滤器</h1>
		<form action="/PLWeb/ser/FilterResources" method="post">
			<table>
				<tr>
					<td><input type="text" name="title"></td>
					<td><button>查找</button></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 选择并删除 -->
	<div>
		<h2>删除文章</h2>
		<c:forEach items="${requestScope.resources_list}" var="resource">
			<div>
				<form action="PLWeb/ser/DeleteResources" method="post">
					<table>
						<tr>
							<td>
								<h3>${resource.title}&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="/PLWeb/ser/DeleteResources?id=${resource.resources_id}">删除</a>
								</h3>
							</td>
						</tr>
						<tr>
							<td>
								<p>${resource.content}</p>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</c:forEach>
	</div>

</body>
</html>