<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response 객체</title>
</head>
<body>
	<%
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
	%>
	<p>문자 인코딩: <%=response.getCharacterEncoding() %><br>
	   컨텐츠 유형: <%=response.getContentType() %></p>
</body>
</html>