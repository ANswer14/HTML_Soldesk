function calcCheck() {
	let xBox = document.cForm.x;
	let yBox = document.cForm.y;
	
	if (isEmpty(xBox) || isNotNumber(xBox)
		|| isEmpty(yBox) || isNotNumber(yBox)) {
			
		alert("Please Fill in Number Properly.");	
		xBox.value = "";
		yBox.value = "";
		xBox.focus();
		return false;
	}
	return true;
}