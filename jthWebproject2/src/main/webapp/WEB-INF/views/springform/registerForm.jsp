<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<h1>Spring Form Tag</h1>
<!-- form:form 태그는 스프링 프레임워크의 폼태크 -->
<!-- modelAtrribute는 데이터를 담아줄 모델을 지칭 -->
<form:form modelAttribute="orderRequest" method="post" action="/exercise/springform/register">
	<table>
		<tr>
			<td>발주요청번호</td>
			<td>
				<form:input path="orderRequestNo" />
			</td>
		</tr>
		<tr>
			<td>발주요청일</td>
			<td>
				<form:input path="orderRequestDate" />
			</td>
		</tr>
		<tr>
			<td>발주품목</td>
			<td>
				<form:input path="itemNm" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<form:button name="register">등록</form:button>
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>