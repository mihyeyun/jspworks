<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script src="../../resources/js/validation.js"></script>
</head>
<body>
	<form action="loginProcess2.jsp" method ="post" name="loginForm">
		<p>
			<label for="userid">아이디 : </label>
			<input type="text" id="userid" name="userid">
		</p>
		<p>
			<label for="passwd">비밀번호 : </label>
			<input type="password" id="passwd" name="passwd">
		</p>
		<p><input type="button" value="로그인" onclick="checkForm()"></p>
	</form>
</body>
</html>