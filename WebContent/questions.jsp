<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty sessionScope.questions_list}">
		<div>没有请求题库</div>
	</c:if>
	<c:if test="${not empty sessionScope.questions_list}">
		<div>
			<p>题目数量: ${fn:length(sessionScope.questions_list)}</p>
			<form action="/PLWeb/ser/UpdateUserScore" method="post">
				<table>
					<c:forEach items="${sessionScope.questions_list}" var="q">
						<table>
							<tr>
								<td><h4>${q.question_text}</h4></td>
							</tr>
							<tr>
								<td><input type="radio" name="answer_${q.question_id}"
									value="A"> A: ${q.option_a}</td>
							</tr>
							<tr>
								<td><input type="radio" name="answer_${q.question_id}"
									value="B"> B: ${q.option_b}</td>
							</tr>
							<tr>
								<td><input type="radio" name="answer_${q.question_id}"
									value="C"> C: ${q.option_c}</td>
							</tr>
							<tr>
								<td><input type="radio" name="answer_${q.question_id}"
									value="D"> D: ${q.option_d}</td>
							</tr>
						</table>
					</c:forEach>
				</table>

				<button>提交</button>
			</form>

		</div>
	</c:if>
</body>
</html>