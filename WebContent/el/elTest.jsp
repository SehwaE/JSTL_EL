<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/el/elTest.jsp</h1>
	<!-- jsp페이지에서 실행시킬 경우 request영역값이 null로 출력 -->
	<!-- session은 서버가 켜져있을 경우 값이 서버에 남아있기 때문에 영역값을 받아올 수 있음 -->
	<!-- 만약 서버가 켜져있지 않을 경우 session값 역시 null 출력 -->
	request 영역값 : <%=request.getAttribute("cnt") %><br>
	session 영역값 : <%=session.getAttribute("cnt") %><br>
	
	<hr>
	El 표현식<br>
	request 영역값 : ${requestScope.cnt }<br>
	session 영역값 : ${sessionScope.cnt }<br>
	<hr>
	<h3> el 표현식의 경우 접근하는 영역의 정보가 없을 경우
		pageScope -> requestScope -> sessionScope -> applicationScope
		영역을 순차적으로 돌면서 해당 이름의 값을 찾는다.
	</h3>
	<!-- 1000이 출력됨 -->
	<!-- 가능하면 변수명을 구분할 수 있게 만드는것이 좋음 (req.resp변수명이 동일할 경우 어디의 값인지 구분하기 어려움) -->
	${cnt }<br>

		
</body>
</html>