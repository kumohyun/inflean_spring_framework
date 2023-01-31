<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 목록</title>
</head>
<body>

<form action="/exercise/test/list" method="get">
	<input type="submit" value="list(Get)">
</form>

<form action="/exercise/test/detail" method="get">
	<input type="submit" value="detail(Get)">
</form>

<form action="/exercise/test/insert" method="post">
	<input type="submit" value="insert(Post)">
</form>

<form action="/exercise/test/update" method="post">
	<input type="submit" value="update(Post)">
</form>

<form action="/exercise/test/delete" method="post">
	<input type="submit" value="delete(Post)">
</form>

</body>
</html>