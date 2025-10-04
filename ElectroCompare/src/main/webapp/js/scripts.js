function noneService(){
	alert("추후 공개될 서비스 입니다.");
}
function checkSignUp(){
	var form = document.member_form;
	
	var regExpId = /^[a-zA-Z0-9_]{4,20}/;
	var regExpPassword = /^(?=.*[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?^])[a-zA-Z0-9!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?^]{8,20}$/;
	var regExpName = /^[a-z|A-Z|가-힣]/;
	var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 정규표현식
	
	var id= form.userID.value;
	var password =form.userPassword.value;
	var name = form.userName.value;
	var email = form.userEmail.value;
	
	var userGender  = document.getElementById("gender");
	var gender = (userGender.options[userGender.selectedIndex].value);
	
	if (!regExpId.test(id)){
		alert("아이디는 4자리 ~ 20자리입니다.");
		form.userID.select();
		return;
	}
	if (!regExpPassword.test(password)){
		alert("비밀번호는 특수문자를 포함한 8자리~ 20자리입니다.");
		form.userPassword.select();
		return;
	}
	if (!regExpName.test(name)){
		alert("이름은 영대소문자 및 한글만 가능합니다.");
		form.Name.select();
		return;
	}
	if (!regExpEmail.test(email)){
		alert("올바른 이메일 형식을 입력해주세요");
		form.userEmail.select();
		return;
	}
	if (password != form.re_passwd.value){
		alert("비밀번호 재확인이 다릅니다.");
		form.repasswd.select();
		return;
	}
	if (gender == "null"){
		alert("성별을 선택해주세요.");
		form.userGender.select();
		return;
	}
	form.submit();
}

function checkSearchPassword(){
	var form = document.member_form;
	
	var regExpId = /^[a-zA-Z0-9_]{4,20}/;
	var regExpName = /^[a-z|A-Z|가-힣]/;
	var regExpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 정규표현식
	var id= form.userID.value;
	var name = form.userName.value;
	var email = form.userEmail.value;
	
	if (!regExpId.test(id)){
		alert("아이디는 4자리 ~ 20자리입니다.");
		form.userID.select();
		return;
	}
	if (!regExpName.test(name)){
		alert("이름은 영대소문자 및 한글만 가능합니다.");
		form.Name.select();
		return;
	}
	if (!regExpEmail.test(email)){
		alert("올바른 이메일 형식을 입력해주세요");
		form.userEmail.select();
		return;
	}
	form.submit();
}

function checkChangePassword(){
	var form = document.member_form;
	var regExpId = /^[a-zA-Z0-9_]{4,20}/;
	var regExpPassword = /^(?=.*[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?^])[a-zA-Z0-9!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?^]{8,20}$/;
	// var regExpPassword = /^(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;
	
	var id= form.userID.value;
	var password =form.userPassword.value;
	
	if (!regExpId.test(id)){
		alert("아이디는 4자리 ~ 20자리입니다.");
		form.userID.select();
		return;
	}
	if (!regExpPassword.test(password)){
		alert("비밀번호는 특수문자를 포함한 8자리~ 20자리입니다.");
		form.userPassword.select();
		return;
	}
	if (password != form.re_passwd.value){
		alert("비밀번호 재확인이 다릅니다.");
		form.repasswd.select();
		return;
	}
	form.submit();
}
