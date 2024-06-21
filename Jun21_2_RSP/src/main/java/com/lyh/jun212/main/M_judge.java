package com.lyh.jun212.main;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class M_judge {
	
	
	public static void judge(HttpServletRequest request) {
		Random com = new Random();
		int comNum = com.nextInt(3) + 1;
		int myNum = 0;
		String[] judge = request.getParameterValues("judge");
		ArrayList<Integer> al = new ArrayList<Integer>();
		if (judge != null) {
			for (String a : judge) {
				myNum = Integer.parseInt(a);
			}
			if (myNum - comNum == 0) {
				Score.draw ++;
			}else if (myNum - comNum == -1 || myNum - comNum == 2) {
				Score.lose ++;
			}else if (myNum - comNum == 1 || myNum - comNum == -2) {
				Score.win ++;
			}
			al.add(Score.win);
			al.add(Score.lose);
			al.add(Score.draw);
			
			request.setAttribute("al", al);
			request.setAttribute("myNum", myNum);
			request.setAttribute("comNum", comNum);
		}else {
		}
		
		
		
	}
	

}


















// 가위 바위 보
// 1    2  3
// 나    컴
// 1   1  => 0  무
// 1   2  => -1 패
// 1   3  => -2 승
// 2   1  => 1  승
// 2   2  => 0  무
// 2   3  => -1 패
// 3   1  => 2 패
// 3   2  => 1 승
// 3   3  => 0 무