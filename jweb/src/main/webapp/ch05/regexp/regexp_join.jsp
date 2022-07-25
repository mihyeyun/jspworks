<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script type="text/javascript">
	/* 
		1. 아이디는 문자로 시작
		2. 비밀번호는 숫자만 입력
		3. 이름은 한글만 입력
		4. 연락처 입력 확인
		5. 이메일 입력 확인
	*/
	function checkMember(){
		//변수 선언
		let form = document.Member;
		let id = form.id.value;
		let passwd = form.passwd.value;
		let name = form.name.value;
		let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
		let phone2 = form.phone2.value;
		let phone3 = form.phone3.value;	
		let email = form.email.value;
		
		//정규표현식 선언
		let regExpId = /^[a-zA-Z가-힣]*$/;
		let regExpPasswd = /^[0-9]*$/;
		let regExpName = /^[가-힣]*$/;
		let regExpPhone = /\d{3}-\d{3,4}-\d{4}/;
		//let regExpEmail = /^[0-9a-zA-Z]*@[0-9a-zA-Z]*\.[a-zA-Z]{2,3}$/;
		let regExpEmail = /^[0-9a-zA-Z]([-_]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
		
		
		
		//유효성 검사
		if(id==""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return false;
		}
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요.");
			form.id.select();
			return false;
		}
		if(passwd==""){
			alert("비밀번호를 입력해주세요.");
			form.id.focus();
			return false;
		}
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요.");
			form.passwd.select();
			return false;
		}
		if(name==""){
			alert("이름을 입력해주세요.");
			form.id.focus();
			return false;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요.")
			form.name.select();
			return false;
		}
		if((phone2=="") && (phone3=="")){
			alert("연락처를 입력해주세요.");
			form.phone.focus();
			return false;
		}
		if(!regExpPhone.test(phone)){
			alert("연락처를 바르게 입력해주세요.")
			form.phone.select();
			return false;
		}
		if(email==""){
			alert("이메일을 입력해주세요.");
			form.email.focus();
			return false;
		}
		if(!regExpEmail.test(email)){
			alert("이메일을 바르게 입력해주세요.")
			form.email.select();
			return false;
		}
		
		form.submit();
	}	
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="validation_process.jsp" method="post" name="Member">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="password" name="passwd">
		<p>이 름: <input type="text" name="name">
		<p>연락처: <select name="phone1">
				 <option value="010">010</option>
				 <option value="02">02</option>
				 <option value="031">031</option>
				 <option value="041">041</option>
				</select>
				- <input type="text" maxlength="4" size=4 name="phone2">
				- <input type="text" maxlength="4" size=4 name="phone3">
		<p>이메일: <input type="text" name="email">
		<p><button type="button" onclick="checkMember()">가입하기</button>
	</form>
</body>
</html>