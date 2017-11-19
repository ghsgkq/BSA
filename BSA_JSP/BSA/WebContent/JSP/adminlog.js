/**
 * 
 */
function AdminLogSave(){
	if(document.writeForm.admin_id.value == ""){
		alert("ID를 입력해주세요.");
		document.writeForm.admin_id.focus();
		return false;
	}
	if(document.writeForm.admin_pw.value == ""){
		alert("Pw를  입력해주세요.");
		document.writeForm.admin_pw.focus();
		return false;
	}

}