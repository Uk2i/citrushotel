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

function coedit(){
	var gcd = $("#e_groupCd option:selected").val();
	var ccd = $("#e_cmmnCd").val();
	var cnm = $("#e_cmmnNm").val();
	var cuse = $("#e_cmmnUse").val();
	$.ajax({
		type : "post",
		url : "coedit.do",
		dateType : "json",
		data :{
			cmmn_cd : ccd,
			group_cd : gcd,
			cmmn_nm : cnm,
			cmmn_use : cuse
		},
		success : function(res){
			if(res==1){
				alert("수정되었습니다.");
				$("#modalEditCmmn").modal('hide');
				location.replace('code-manage.do');
			}else{
				alert("수정실패하였습니다.");
			};
		},
		error : function(err){
			console.log(err);
		}
	
	});
}
function searchcode(){
	var gcd = $("#selectGroupCd option:selected").val();
	$.ajax({
		type : "post",
		url : "searchcode.do",
		dateType : "json",
		data : {
			group_nm : gcd
		},
		success : function(res){
			$(".table-border-bottom-0").empty();
			var str = '<tr>';
			$.each(res.cgList, function(){
				str += '<td>'+this.group_cd+'</td>';
				 str += '<TD>' + this.group_nm + '</TD>';
				 str += '<TD>' + this.cmmn_cd + '</TD>';
				 str += '<TD>' + this.cmmn_nm + '</TD>';
				 str += '<td>';
				 str += '<div class="dropdown">';
				 str += '<button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">';
				 str += '<i class="bx bx-dots-vertical-rounded"></i>';
				 str += '</button>';
				 str += '<div class="dropdown-menu">';
				 str += '<a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#modalEditCmmn">';
				 str += '<i class="bx bx-edit-alt me-1"></i>';
				 str += '수정';
				 str += '</a>';
				 str += '</div>';
				 str += '</div>';
				 str += '</td>';
				 str += '</tr>';
			});
			$(".table-border-bottom-0").append(str);
		},
		error : function(err){
			console.log(err);
		}
	})
}

$(document).ready(function(){
	$("#codeadd").click(function(){
		codeadd();
	})
	$("#coedit").click(function(){
		coedit();
	})
	$("#selectGroupCd").change(function(){
		searchcode();
	})
})