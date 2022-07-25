<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkMember(){
		let form = document.Member;
		let userid = form.userid.value;
		let passwd = form.passwd.value;
		let name = form.name.value;
		
		let regExpId = /^[a-zA-Z가-힣]/;		//id	
		let regExpPasswd1 = /[a-zA-Z0-9]/;	//passwd
		let regExpPasswd2 = /[!~@#$%^&*]/;
		
		if(!regExpId.test(userid)){
			alert("아이디는 문자로 시작해주세요.");
			form.userid.select();
			return false;
		}
		

		if(passwd.length < 8 || passwd.length > 12 || !regExpPasswd1.test(passwd) || !regExpPasswd2.test(passwd)){
			alert("비밀번호는 영문자, 숫자, 특수문자 포함 8~12자로 입력해주세요.");
			form.passwd.select();
			return false;
		}
		
		if(passwd.search(userid) > -1){
			alert("비밀번호는 아이디를 포함할 수 없습니다.");
			form.passwd.select();
			return false;
		}
		
		if(name == ""){
			alert("이름을 입력해 주세요.");
			form.name.focus();
			return false;
		}
		
		form.submit();
	}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="test_process.jsp" method="post" name="Member">
		<p>아이디: <input type="text" id="userid" name="userid"></p>
		<p>비밀번호: <input type="text" id="passwd" name="passwd"></p>
		<p>이 름: <input type="text" id="name" name="name"></p>
		<p><button type="button" onclick="checkMember()">가입하기</button>
	</form>
</body>
</html>