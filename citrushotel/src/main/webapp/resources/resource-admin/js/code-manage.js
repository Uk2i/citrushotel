function codeadd(){
	var use = $("#addcmmnUse").val();
	var gcd = $("#addgroupCd option:selected").val();
	var cmmncd = $("#addcmmnCd").val();
	var cmmnnm = $("#addcmmnNm").val();
	$.ajax({
		type : "post",
		url : "codeadd.do",
		dateType : "json",
		data :{
			cmmn_cd : cmmncd,
			group_cd : gcd,
			cmmn_nm : cmmnnm,
			cmmn_use : use
		},
		success : function(res){
			if(res==1){
				alert("등록되었습니다.");
				$("#modalAddCmmn").modal('hide');
			}else{
				alert("등록실패하였습니다.");
			};
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