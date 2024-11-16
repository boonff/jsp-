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
	<a href="learningContent.jsp">返回主页</a>
	<!-- 历史成绩 -->
	<div>
	<h1>历史成绩</h1>
		<c:forEach items="${sessionScope.score_list }" var="s">
			<table>
				<tr>
					<td>用户：${s.user_id }</td>
					<td>题目总数：${s.correct_answers }</td>
					<td>错题数：${s.total_questions }</td>
					<td>分数：${s.score_percentage }</td>
					<td>时间：${s.timestamp }</td>
				</tr>
			</table>
		</c:forEach>
	</div>
	<!-- 错题记录 -->
	<div>
	<h1>错题记录</h1>
		<c:forEach items="${sessionScope.answer_view_list }" var="view">
			<table>
				<tr>
					<td><h4>${view.question_text}</h4></td>
				</tr>
				<tr>
					<td>A: ${view.option_a}</td>
				</tr>
				<tr>
					<td>B: ${view.option_b}</td>
				</tr>
				<tr>
					<td>C: ${view.option_c}</td>
				</tr>
				<tr>
					<td>D: ${view.option_d}</td>
				</tr>
				<tr>
					<td>你的答案：${view.answer}</td>
					<td>正确答案：${view.correct_option}</td>
				</tr>
			</table>
		</c:forEach>
	</div>
</body>
</html>