// 논리연산자, 비교연산자, 일치연산자 결과값으로 나온 true, flase를 가지고...
// 6. 조건문
//	어떤 조건에 따라서 이후에 실행이 달라지게 하는!

// if문 (Java와 같다)
//	if절 괄호 안에 조건을 따져서 true라면 실행하게끔!
// if - else if - else
//		... 예제 생략 ㅎ_ㅎ

// switch-case
//	case가 다양할 때, 보다 간결하게 나타낼 수 있는 장점

/*
switch (변수명 or 값) {
	case 값1:
		내용
	case2 값2:
		내용
	... 
	default:
		내용
}
*/
// 사과 : 100원
// 바나나 : 200원
// 키위 : 300원
// 멜론 : 500원
// 수박 : 500원
// 사고 싶은 과일을 입력(prompt)해서 그 가격을 출력(alert)

let fruit = prompt('사고싶은 과일(사과 / 바나나 / 키위 / 멜론 / 수박) 입력');
let price = 0;
switch (fruit){
	case '사과':
		price = 100;
		break;
	case '바나나':
		price = 200;
		break;
	case '키위':
		price = 300;
		break;
	case '멜론':
	case '수박':
		price = 500;
		break;
	default:
		alert('그런건 없어요');
		break;
}
alert(price);









































