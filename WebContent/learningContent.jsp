<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*, net.servrlet.GetHomeResources"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学习内容</title>
<style>
body {
	margin: 0;
	padding: 0;
	display: flex;
}

.left-section {
	flex: 1;
	max-width: 300px;
	background-color: #9cc8db;
	padding: 20px;
}

.right-section {
	flex: 1;
	background-color: #9cc8db;
	padding: 20px;
}
</style>
</head>
<body>
	<%
		// 在页面加载时直接调用 Servlet
		GetHomeResources servlet = new GetHomeResources();
		servlet.doGet(request, response);
	%>
	<div class="left-section">
		<!-- 用户 -->
		<c:if test="${not empty sessionScope.user}">
			<!-- 欢迎界面 -->
			<div>
				<h1>学习内容</h1>
				<p>欢迎进入我们的编程学习网站，${sessionScope.user.username }！</p>
				<p>在这里，您可以在线答题。</p>
				<p>开始随意探索和学习！</p>
			</div>
			<!-- 进入答题界面 -->
			<div>
				<h2>开始答题</h2>
				<!-- 两个模式按钮 -->
				<table>
					<tr>
						<td>
							<form action="/PLWeb/ser/GetQuestions" method="post">
								<input type="hidden" name="num_question" value="3">
								<button>快速模式</button>
							</form>
						</td>
						<td>
							<form action="/PLWeb/ser/GetQuestions" method="post">
								<input type="hidden" name="num_question" value="10">
								<button>标准模式</button>
							</form>
						</td>
					</tr>
				</table>
			</div>
			<div>
				<h2>答题记录</h2>
				<form action="/PLWeb/ser/LoadScoreAndRecords" , method="post">
					<button>查看</button>
				</form>
			</div>
			<!-- op -->
			<div>
				<h1>OP</h1>
				<c:if test="${not empty requestScope.resources_permission_error }">
					<p>权限不足</p>
				</c:if>
				<form action="/PLWeb/ser/OpResources" , method="post">
					<button>管理文章</button>

				</form>
				<c:if test="${not empty questions_permission_error }">
					<p>权限不足</p>
				</c:if>
				<form action="/PLWeb/ser/OpQuestions" , method="post">
					<button>管理题库</button>
				</form>
			</div>
			<!-- 退出登录 -->
			<div>
				<h2>退出登录</h2>
				<form action="/PLWeb/ser/LogOut" method="post">
					<button>登出</button>
				</form>
			</div>
		</c:if>
		<!-- 游客 -->
		<c:if test="${empty sessionScope.user}">
			<div>
				<h1>欢迎访问PL编程学习网站</h1>
				<p>感谢您来到我们的学习网站！</p>
				<p>在这里，您可以享受丰富多彩的学习资源，提升编程和技术技能。</p>
				<p>如果您还没有账户，我们鼓励您注册一个账户以便获得更多功能和个性化体验。</p>
				<p>注册帐户可以让您：</p>
				<ul>
					<li>保存您的学习进度</li>
					<li>在线答题</li>
				</ul>
				<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
			</div>
		</c:if>
	</div>
	<div class="right-section">
		<h1>学习资源</h1>
		<table>
			<tr>
				<td>
					<h3>${sessionScope.home_resources.title }<h3>
				</td>
				<td>${sessionScope.home_resources.content }</td>
			</tr>
		</table>
		<form action="/PLWeb/ser/GetAllResources" , method="post">
			<button>更多文章</button>
		</form>
	</div>
</body>
</html>
