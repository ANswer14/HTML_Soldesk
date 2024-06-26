function check() {
	let introduceBox = document.regForm.a_introduce;
	if(isEmpty(introduceBox) || introduceBox.value.length > 100) {
		alert("Please Fill in Introduce Properly");
		introduceBox.value = "";
		introduceBox.focus();
		return false;
	}
	alert("성공 !!");
	return true;
}




