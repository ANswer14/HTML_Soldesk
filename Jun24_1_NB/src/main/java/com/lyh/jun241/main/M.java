package com.lyh.jun241.main;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class M {
//	private static final String NUM = getNum();
	static final String NUM = getNum();
	private static int t;
	
	
	
	
	
	public static String getNum() {
		Random com = new Random();
		int answer = 0;
		String stAns = null;
		while (true) {
			answer = com.nextInt(976) + 12;
			stAns = Integer.toString(answer);
		if (answer / 100 == (answer - answer / 100 * 100) / 10  
		|| answer / 100 == answer % 10
		|| (answer - answer / 100 * 100) / 10 == answer % 10) {
		}else if(answer < 100 && (answer - answer / 100 * 100) / 10 != 0 && answer % 10 != 0){
			return stAns = "0" + answer;
		}
		}
		
	}
	

	
	public static void judge(HttpServletRequest request, String NUM) {
		
		String myAns = request.getParameter("number");
		int strike = 0;
		int ball = 0;
		for (int i = 0; i < 3; i++) {
			if (NUM.charAt(i) == myAns.charAt(i)) {
				strike ++;
			}
			for (int j = 0; j < 3; j++) {
				if (NUM.charAt(i) == myAns.charAt(i)) {
				if (i == j) {
					continue;
				}else if (NUM.charAt(i) == myAns.charAt(j)) {
					ball ++;
				}
			}else if (i == j) {
				continue;
			}else if (NUM.charAt(i) == myAns.charAt(j)) {
				ball ++;
			}
			// charAt() : 해당 인덱스에 있는 문자(char)를 반환
			// char 자료형은 ascii (특정 정수값) 코드값으로 사용되기 때문에
		}
		request.setAttribute("strike", strike);
		request.setAttribute("ball", ball);
	}
		t++;
		request.setAttribute("t", t);
		if (strike == 3) {
			String result = "정답 ! " + M.NUM + "이었습니다!";
			t = 0;
			request.setAttribute("r", result);
			request.setAttribute("t", null);
			request.setAttribute("myAns", myAns);
			request.setAttribute("btn", "<button onclick='goHome();'>다시 시작 </button>");
			request.setAttribute("con", "<script>alert('ㅊㅋㅊㅋ');</script>");
					
		}
}
}
