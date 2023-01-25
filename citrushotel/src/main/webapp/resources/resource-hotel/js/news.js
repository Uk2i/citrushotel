function CV_checkEmailPattern(str) {
	var pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/; // email패턴

	if (!pattern.test(str)) {
		alert("이메일 형태로 구성하셔야합니다.");
		return false;
	} else {
		return true;
	}
}
function emailadd(){
	var email = $("#news_email").val();
	$.ajax({
		type : "post",
		url : "emailadd.do",
		dataType : "json",
		data :{
			news_email : email
		},
		success : function(res){

				alert("뉴스레터에 등록되습니다.");

		},
		error : function(err){
			console.log(err);
		}
	
	
	})
}
$(document).ready(function(){
	$("#news_email").on("change", function(){
		let str = $("#news_email").val()
		if(!CV_checkEmailPattern(str)){
			$("#news_email").val("")
			$("#news_email").focus();
		}
	})
	$("#newssub").click(function(){
		emailadd();
		$("#news_email").val("")
	})
})