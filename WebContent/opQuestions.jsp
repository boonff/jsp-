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
	<a href="/PLWeb/learningContent.jsp">home</a>
	<h1>管理题库</h1>
	<!-- 添加题目 -->
	<div>
		<h2>添加题目</h2>
		<form action="/PLWeb/ser/AddQuestions" method="post">
			<table>
				<tr>
					<td><textarea name="question_text" rows="10" cols="50"></textarea></td>
				</tr>
				<tr>
					<td><input type="text" name="option_a"></td>
				</tr>
				<tr>
					<td><input type="text" name="option_b"></td>
				</tr>
				<tr>
					<td><input type="text" name="option_c"></td>
				</tr>
				<tr>
					<td><input type="text" name="option_d"></td>
				</tr>
				<tr>
					<td><label> <input type="radio" name="correct_option"
							value="A"> A
					</label> <label> <input type="radio" name="correct_option"
							value="B"> B
					</label> <label> <input type="radio" name="correct_option"
							value="C"> C
					</label> <label> <input type="radio" name=correct_option value="D">
							D
					</label></td>
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
		<form action="/PLWeb/ser/FilterQuestions" method="post">
			<table>
				<tr>
					<td><input type="text" name="question_text"></td>
					<td><button>查找</button></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 选择并删除 -->
	<div>
		<h2>删除题目</h2>
		<c:forEach items="${requestScope.questions_list}" var="question">
			<table>
				<tr>
					<td><h4>${question.question_text}&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="/PLWeb/ser/DeleteQuestion?id=${question.question_id}">删除</a>
						</h4></td>
				</tr>
				<tr>
					<td>A: ${question.option_a}</td>
				</tr>
				<tr>
					<td>B: ${question.option_b}</td>
				</tr>
				<tr>
					<td>C: ${question.option_c}</td>
				</tr>
				<tr>
					<td>D: ${question.option_d}</td>
				</tr>
				<tr>
					<td>正确答案：${question.correct_option }</td>
				</tr>
			</table>
		</c:forEach>
	</div>
</body>
</html>