/**
 * 데이터 길이 확인
 */
 
 function checkForm(){
	
	let form = document.loginForm;
	let id = form.userid.value;
	let pw = form.passwd.value;
	
	//아이디 길이 체크
	if(id.length < 4 || id.length > 12){
		alert("아이디는 4자에서 12자로 입력해주세요.");
		form.userid.focus();
		return false;
	}else if(pw.length != 5){
		alert("비밀번호는 5자로 입력해주세요.");
	}else{
		form.submit();
	}
	
}