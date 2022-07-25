<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식</title>
</head>
<script>
	function checkForm() {
		//name 변수 선언
		let form = document.frm;
		let name = form.name.value;
		
		//정규 표현식 - 이름 항목은 숫자로 시작할 수 없음
		let regExp = /^[a-zA-Z가-힣]*$/;
	
		if(name == ""){
			alert("이름을 입력해주세요");
			return false;
		}
		
		if(!regExp.test(name)){
			alert("이름은 숫자로 시작할 수 없습니다.");
			return false;
		}
			
		
		form.submit();
	}
</script>
<body>
	<form action="" method="post" name="frm">
		<p>이름: <input type="text" name="name">
		<input type="button" value="전송" onclick="checkForm()">
	</form>
</body>
</html>