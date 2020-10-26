<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	function findUsername() {
		//$("#result").load("server/ajax_info.txt");
		var param = {userid: userid.value}; //json 구조로 표현
		$.get("server/findName.jsp",param, function(data){ 
			result.innerHTML = data; //$("#result").html(data)- 제이쿼리표현
		});
	}
</script>
</head>
<body>
<input id="userid">
<button type="button" id="btnFind" onclick="findUsername()">검색</button>
<div id="result">결과</div>
</body>
</html>