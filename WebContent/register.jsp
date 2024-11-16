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
<title>注册页面</title>
</head>
<body>
	<h1>注册页面</h1>
	<c:if test="${not empty requestScope.errormessage }">
		<div>${requestScope.errormessage }</div>
	</c:if>
	<form action="/PLWeb/ser/Register" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" required></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td>再次输入密码:</td>
				<td><input type="password" name="password_" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="注册"></td>
			</tr>
		</table>
	</form>

</body>
</html>
</body>
</html>