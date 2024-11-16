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
<html>
<head>
<title>登录页面</title>
</head>
<body>
	<h1>登录页面</h1>
	<!-- 错误信息 -->
	<c:if test="${not empty requestScope.errorMessage}">
		<div>${requestScope.errorMessage}</div>
	</c:if>
	<!-- 登录表单 -->
	<form action="/PLWeb/ser/Login" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password"></td>
			<tr>
				<td><input type="submit" value="登录"></td>
			<tr>
		</table>
	</form>

</body>
</html>
</body>
</html>