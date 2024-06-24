function NBCheck(){
	
	if (isEmpty(document.NBForm.number)) {
		alert("3글자를 입력해주세요.")
		document.NBForm.number.value = "";
		document.NBForm.number.focus();
		return false;
		
	}else if(isNotNumber(document.NBForm.number)){
		alert("숫자를 입력해주세요.")
		document.NBForm.number.value = "";
		document.NBForm.number.focus();
		return false; 
		
	}else if(document.NBForm.number.value.length != 3){
		alert("숫자 3자를 입력해주세요.")
		document.NBForm.number.value = "";
		document.NBForm.number.focus();
		return false;
		
	}else if(Number(document.NBForm.number.value) % 10 /*.value[2]*/ == (Number(document.NBForm.number.value) % 100 - Number(document.NBForm.number.value) % 10) / 10 /*.value[1]*/||
			Number(document.NBForm.number.value) % 10 == (Number(document.NBForm.number.value) - Number(document.NBForm.number.value) % 100) / 100 ||
			(Number(document.NBForm.number.value) % 100 - Number(document.NBForm.number.value) % 10) / 10 == (Number(document.NBForm.number.value) - Number(document.NBForm.number.value) % 100) / 100){
		alert("중복된 숫자는 불가합니다.")
		document.NBForm.number.value = "";
		document.NBForm.number.focus();
		return false;
		
	}
	
	return true;
}





















































