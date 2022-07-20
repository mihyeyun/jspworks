<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<label for="fruit"></label>
		오렌지<input type="checkbox" name="fruit" value="오렌지">
		사과<input type="checkbox" name="fruit" value="사과">
		바나나<input type="checkbox" name="fruit" value="바나나">
		<input type="submit" value="전송">
	</form>
</body>
</html>