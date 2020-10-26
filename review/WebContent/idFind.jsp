<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
   <script>
      function findUsername(){
         var xhttp = new XMLHttpRequest();//xhr객체 생성
           xhttp.onreadystatechange = function() {   //콜백함수 정의
             if (this.readyState == 4 && this.status == 200) {
              document.getElementById("result").innerHTML += this.responseText;
             }
           };
           
           var param="userid="+userid.value;
           xhttp.open("GET", "server/findName.jsp?"+param);//서버 연결 준비
           
           xhttp.send();//요청시작
      }
      
   </script>
<body>
<input id="userid"><button type="button" id="btnFind" onclick="findUsername()">검색</button>
<div id="result"></div>
</body>
</html>