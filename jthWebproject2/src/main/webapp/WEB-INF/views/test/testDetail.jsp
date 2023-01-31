<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 상세</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {

		// jQuary 익히면 이해할 수 있음.
		// post 전송
		$("#postButton").click(function() {
			// ajax 이해 필요
			var varTitle = $("#title").val();
			var varContent = $("#content").val();
			var varWriter = $("#writer").val();
			
			// json 포맷
			var jsonData = {
				title : varTitle,
				content : varContent,
				writer : varWriter
			};

			console.log(jsonData);
			
			// json 포맷의 데이터를 활용
			$.ajax({
				type: "post"											// 방식
				, url : "/exercise/test/detail/post"					// 받을 주소
				, data : JSON.stringify(jsonData)						// 던져줄 데이터
				, contentType : "application/json; charset=UTF-8"		// 데이터 포맷
				, success : function(result){							// 성공 시
					if (result == "SUCCESS") {
						alert("전송에 성공하였습니다.");
					}else{
						alert(result);
					}
				}
			});
		});

		// put전송
		$("#putButton").click(function() {
			var varTitle = $("#title").val();
			var varContent = $("#content").val();
			var varWriter = $("#writer").val();

			var jsonData = {
				title : varTitle,
				content : varContent,
				writer : varWriter
			};

			console.log(jsonData);
			
			$.ajax({
				type : "put"
				, url : "/exercise/test/detail/put"
				, data : JSON.stringify(jsonData)
				, contentType : "application/json; charset=UTF-8"
				, success : function(result){
					if (result == "SUCCESS") {
						alert("전송에 성공하였습니다.");
					}else{
						alert("전송에 실패하였습니다.");
					}
				}
				,error : function(error){
					alert("전송에 실패하였습니다.");
				}
				
			});
			
		});

		// xml전송
		$("#xmlButton").click(function() {
			var varTitle = $("#title").val();
			var varContent = $("#content").val();
			var varWriter = $("#writer").val();

			var makeData = "";
			makeData += "<TestBoard>";
			makeData += "<title>좋은 하루입니다.</title>";
			makeData += "<content>산책하기 좋은 날씨이죠.</content>";
			makeData += "<writer>기분좋은</writer>";
			makeData += "</TestBoard>";

			$.ajax({
				type : "post"
				, url : "/exercise/test/detail/xml"
				, data : makeData
				, contentType : "application/xml; charset=UTF-8" 
				, success : function(result){
					if(result == "SUCCESS"){
						alert("전송에 성공하였습니다.");	
					}
				}
				,error : function(error){
					alert("전송에 실패하였습니다.");
				}
								
			})
						
		});

	});
</script>
</head>
<body>

	<h1>여러가지 데이터 포맷을 전송</h1>
	<%-- <h2>${no}</h2> --%>


	제 목 :
	<input type="text" id="title" name="title" value="">
	<br> 내 용 :
	<input type="text" id="content" name="content" value="">
	<br> 작성자 :
	<input type="text" id="writer" name="writet" value="">
	<br>
	<br>
	<button id="postButton">post 전송</button>
	<button id="putButton">put 전송</button>
	<button id="xmlButton">xml 전송</button>


</body>
</body>
</html>