
// To Do : email이 관리자 이메일이 맞는지 체크하는 함수
function checkEmail() {
	var email = $("#email").val();
	$
			.ajax({
				type : "post",
				url : "adminpwemail.do",
				dataType : "json",
				data : {
					member_email : email
				},
				success : function(res) {
					if (res.res == null) {
						alert("존재하지 않는 이메일입니다.");
					} else {
						alert("인증번호가 전송되었습니다.");
						let inputHtml = "<label for='email' class='form-label'>인증번호 / Confirm Number</label>"
								+ " <input type='text'"
								+ " class='form-control mb-3'"
								+ " id='checknumber'"
								+ " name='checknumber'"
								+ " placeholder='인증번호'" + " autofocus" + "/>";
						$("#confirmArea").html(inputHtml);
						
						// 인증번호 확인 버튼 생성
						$("#getConfirmNumber").remove();

						let buttonHtml = "<button id='okConfirmNumber' type='button' class='btn btn-primary d-grid w-100'>인증번호 확인</button>";
						$("#confirmArea").append(buttonHtml);
						$(document)
								.on(
										"click",
										"#okConfirmNumber",
										function() {
											let str = $("#checknumber").val()
											if (res.resnum == str) {
												alert("인증번호가 일치합니다.");
												$("p.description").remove();
												$("label[for=email]").remove();
												$("#confirmArea").html("");

												let inputHtml1 = "<label for='email' class='form-label'>비밀번호 / Password</label>"
														+ " <input type='password'"
														+ " class='form-control mb-3'"
														+ " id='pwd'"
														+ " autofocus" + "/>";
												let inputHtml2 = "<label for='email' class='form-label'>비밀번호 확인 / Password Confirm</label>"
														+ " <input type='password'"
														+ " class='form-control mb-3'"
														+ " id='pwdConfirm'"
														+ "/>";
												let buttonHtml = "<button id='changePwd' type='button' class='btn btn-primary d-grid w-100' onclick='changePwd();'>비밀번호 변경</button>";
												$("#confirmArea").html(
														inputHtml1);
												$("#confirmArea").append(
														inputHtml2);
												$("#confirmArea").append(
														buttonHtml);
											} else {
												alert("인증번호가 불일치합니다. 다시한번확인해주세요.");
											}

										})

					}
				},
				error : function(err) {
					console.log(err);
				}
			})
}

// To Do : 인증번호가 맞는지 체크하는 함수
function checkConfirmNumber() {
	let inputNumber = $("#okConfirmNumber").val();
	let result = true;

	if (result) {
		$("p.description").remove();
		$("label[for=email]").remove();
		$("input#email").remove();
		$("#confirmArea").html("");

		let inputHtml1 = "<label for='email' class='form-label'>비밀번호 / Password</label>"
				+ " <input type='password'"
				+ " class='form-control mb-3'"
				+ " id='pwd'" + " autofocus" + "/>";
		let inputHtml2 = "<label for='email' class='form-label'>비밀번호 확인 / Password Confirm</label>"
				+ " <input type='password'"
				+ " class='form-control mb-3'"
				+ " id='pwdConfirm'" + "/>";
		let buttonHtml = "<button id='changePwd' type='button' class='btn btn-primary d-grid w-100' onclick='changePwd();'>비밀번호 변경</button>";
		$("#confirmArea").html(inputHtml1);
		$("#confirmArea").append(inputHtml2);
		$("#confirmArea").append(buttonHtml);
	}
}

// To Do : 비밀번호 변경 함수
function changePwd() {
	var pw = $("#pwd").val();
	var email = $("#email").val();
	$.ajax({
		type : "post",
		url : "adminchangepwd.do",
		dataType : "json",
		data : {
			member_pw : pw,
			member_email : email
		},
		success : function(res){
			if(res==1){
				alert("패스워드 변경성공");
				location.replace('adminloginpage.do');
			}else{
				alert("패스워드 변경실패");
			}
		},
		error : function(err){
			console.log(err)
		}
		
	})
}
// 이메일 양식
function CV_checkEmailPattern(str) {
	var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/; // email패턴

	if (!pattern.test(str)) {
		alert("이메일 형태로 구성하셔야합니다.");
		return false;
	} else {
		return true;
	}
}

// pw 양식
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

$(document).ready(function() {
	$("#getConfirmNumber").click(function() {
		checkEmail();
	})
	$("#email").on("change", function() {
		let str = $("#email").val()
		if (!CV_checkEmailPattern(str)) {
			$("#email").val("")
			$("#email").focus();
		}
		;
	})
	$(document).on("change", "#pwd", function() {
		let str = $("#pwd").val()
		if (!CV_checkPasswordPattern(str)) {
			$("#pwd").val("")
			$("#pwd").focus();

		}
		;
	})

	$(document).on("change", "#pwdConfirm", function() {
		let str = $("#pwdConfirm").val()
		if (!CV_checkPasswordPattern(str)) {
			$("#pwdConfirm").val("")
			$("#pwdConfirm").focus();

		}
		;
	})
	$(document).on("click","#changePwd",function(){
		let str = $("#pwd").val()
		let str2 = $("#pwdConfirm").val()
		if(str == str2){
			changePwd();
		}else{
			$("#pwdConfirm").val("")
			$("#pwdConfirm").focus();
			alert("패스워드가 일치하지 않습니다.");
		}
		;
	})
})