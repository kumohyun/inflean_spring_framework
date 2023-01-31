<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
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

		$("#btnRegister").on("click", function() {

			$("#formData").submit();

		});

		$("#btnList").on("click", function() {

			location.href = "/exercise/board/list";

		});

	});
</script>
<body>
	<form id="formData" method="post" action="/exercise/board/register">
		게시판 id <input type="text" id="boardId" name="id" /><br> 게시판 제목 <input
			type="text" id="boardTitle" name="title" /><br> 게시판 내용 <input
			type="text" id="boardContents" name="contents" /><br>
	</form>
	<input type="button" id="btnRegister" value="등록" />
	<input type="button" id="btnList" value="목록" />
</body>
</html>