function bmiCheck() {
	let nameBox = document.bmiForm.name;
	let heightBox = document.bmiForm.height;
	let weightBox = document.bmiForm.weight;
	let imgBox = document.bmiForm.img;
	
	if (isEmpty(nameBox) || atLeastLetter(nameBox, 2)) {
		alert("Please Fill in Your Name Properly.")
		nameBox.value = "";
		nameBox.focus();
		return false;
	}else if (isEmptpy(heightBox) || isNotNumber(heightBox)
		|| atLeastLetter(heightBox, 3)) {
		alert("Please Fill in Your Height Properly.")
		heightBox.value = "";
		heightBox.focus();
		return false;
	}else if (isEmptpy(weightBox) || isNotNumber(weightBox)
		|| atLeastLetter(weightBox, 3)) {
		alert("Please Fill in Your Weight Properly.")
		weightBox.value = "";
		weightBox.focus();
		return false;
	}else if (isEmpty(imgBox) ||
		(isNotType(imgBox, "png")&& isNotType(imgBox, "gif")&&
		 isNotType(imgBox, "jpg")&& isNotType(imgBox, "bmp"))) {
		alert("Please Fill in Your Img Properly.")
		imgBox.value = "";
		imgBox.focus();
		return false;
	}
	return true;	
}









































