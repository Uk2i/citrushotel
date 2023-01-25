function NameCheck(str) {
	var pattern1 = /[0-9]/;// 숫자
	var pattern2 = /[~!#$%^&*()_+|<>?:{}]/; // 특수문자
	if (pattern1.test(str) || pattern2.test(str)) {
		alert("이름에는 숫자나 특수문자가 올수없습니다.");
		return false;
	} else {
		return true;
	}
}

function CV_checkEmailPattern(str) {
	var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/; // email패턴

	if (!pattern.test(str)) {
		alert("이메일 형태로 구성하셔야합니다.");
		return false;
	} else {
		return true;
	}
}

function CV_checkPasswordPattern(str) {
	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	if (!pattern1.test(str) || !pattern2.test(str) || !pattern3.test(str)
			|| str.length < 8) {
		alert("비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.");
		return false;
	} else {
		return true;
	}
}
function emailcheck(){
	var email = $("#member_email").val();
	$.ajax({
		type : "post",
		url : "emailCheck.do",
		dataType : "json",
		data :{
			member_email : email
		},
		success : function(res){
			if(res.result == null){
				$("#emailHelp").attr('class','form-text text-muted valid');
			}else{
				$("#emailHelpInvalid").attr('class','form-text text-muted invalid');
			}
		},
		error : function(err){
			console.log(err);
		}
	})
}

$(document).ready(function() {
	$("#emailChk").click(function(){
		emailcheck();
	})
	$("#member_name").on("change", function() {
		let str = $("#member_name").val()
		if (!NameCheck(str)) {
			$("#member_name").val("")
			$("#member_name").focus();
		}
		;
	})
	$("#member_email").on("change", function() {
		let str = $("#member_email").val()
		if (!CV_checkEmailPattern(str)) {
			$("#member_email").val("")
			$("#member_email").focus();
		}
		;
	})
	$("#member_pw").on("change", function() {
		let str = $("#member_pw").val()
		if (!CV_checkPasswordPattern(str)) {
			$("#member_pw").val("")
			$("#member_pw").focus();
		}
		;
	})
	
	$("#member_pw2").on("change", function() {
		let str = $("#member_pw").val()
		let str2 = $("#member_pw2").val()
		if (str == str2) {
		} else {
			$("#member_pw2").val("")
			$("#member_pw2").focus();
			alert("비밀번호가 일치하지 않습니다.");
		}
		;
	})
	var autoHypenPhone = function(str) {

		str = str.replace(/[^0-9]/g, '');
		var tmp = '';
		if (str.length < 4) {
			return str;
		} else if (str.length < 7) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3);
			return tmp;
		} else if (str.length < 11) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 3);
			tmp += '-';
			tmp += str.substr(6);
			return tmp;
		} else {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
		return str;
	}

	var phoneNum = document.getElementById('member_tel');
	phoneNum.onkeyup = function() {
		if (this.value.length > 13) {
			alert("전화번호를 확인해주세요");
			this.value = autoHypenPhone((this.value).substring(0, 13));
		} else {
			this.value = autoHypenPhone(this.value);
		}
	}
})