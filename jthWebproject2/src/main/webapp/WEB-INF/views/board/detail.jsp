<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
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
	$(document).ready(function() {

		$("#btnModify").on("click", function() {

			location.href = "/exercise/board/modify?id="+ ${resultData.id};

		});
		
		$("#btnDelete").on("click", function() {

			$("#formDelete").submit();

		});

	});
</script>
</head>
<body>
<h1>게시판 상세</h1>
<table class="table table-striped">
	<tr>
		<td>id</td>
		<td>제목</td>
		<td>내용</td>
	</tr>
	<tr>
		<td>${resultData.id }</td>
		<td>${resultData.title }</td>
		<td>${resultData.contents }</td>
	</tr>
</table>
<button id="btnModify">수정</button>
<button id="btnDelete">삭제</button>
<form id="formDelete" method="post" action="/exercise/board/delete">
	<input type="hidden" name="id" value="${resultData.id }"/>
</form>
</body>
</html>