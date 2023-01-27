function codeadd(){
	var use = $("#cmmnUse").val();
	var gcd = $("#groupCd").val();
	var cmmncd = $("#cmmnCD").val();
	var cmmnnm = $("#cmmnNm").val();
	$.ajax({
		type : "post",
		url : "codeadd.do",
		dateType : "json",
		data :{
			
		},
		success : function(res){
			
		},
		error : function(err){
			console.log(err);
		}
	
	});
}

$(document).ready(function(){
	$("#codeadd").click(function(){
		codeadd();
	})
})