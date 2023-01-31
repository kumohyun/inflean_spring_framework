<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
	$("#btnRegister").on("click", function(){
		location.href = "/exercise/board/register";
	});
	
});
</script>
</head>
<body>
	<h1>게시판</h1>
	<table class="table table-striped">
		<c:forEach var="board" items="${resultList }" varStatus="status">
			<tr>
				<td>${board.id }</td>
				<td><a href="/exercise/board/detail?id=${board.id }">${board.title }</a></td>
				<td>${board.contents }</td>
			</tr>
		</c:forEach>
	</table>
	<button id="btnRegister">등록</button>
</body>
</html>