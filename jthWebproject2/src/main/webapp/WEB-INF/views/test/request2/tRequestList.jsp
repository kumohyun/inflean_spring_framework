<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tRequestList</title>
</head>
<body>
<h1>요청에 대한 실습</h1>
<a href="/exercise/test/request2/regist?boardId=20230130001&boardContent=Good day&boardWriter=kmh">전송</a>

<form action = "/exercise/test/request2/registVO" method="get">
	<label>구매요청번호 : </label>
	<input type="text" name="purchaseRequestNo" value="202301300001" /><br>
	<label>구매요청일자 : </label>
	<input type="text" name="purchaseRequestDate" value="20230130" /><br>
	<label>구매품목 : </label>
	<input type="text" name="purchaseRequestItem" value="돼지 삼겹살 20KG" /><br>
	<input type="submit" value="전송" />
</form>

</body>
</html>