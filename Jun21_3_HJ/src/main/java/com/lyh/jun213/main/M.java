package com.lyh.jun213.main;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

public class M {
	private int win;
	private int lose;
	
	private static final M SCORE = new M();
	
	public M() {
		// SCORE
	}
	
	
	
	public static M getWins() {
		return SCORE;
	}



	public static void judge(HttpServletRequest request) {
		int select = Integer.parseInt(request.getParameter("select"));
		request.setAttribute("sp", select + ".jpg");
		
		int comNum = new Random().nextInt(100) + 1;
		request.setAttribute("cp", (comNum % 2) + ".jpg");
		
		
		if (comNum % 2 == 1) {
			if (select == 1) {
				M.SCORE.win++;
			}else {
				M.SCORE.lose++;
			}
			
		}else {
			if (comNum % 2 == 0) {
				if (select == 0) {
					M.SCORE.win++;
				}else {
					M.SCORE.lose++;
				}
		}
		
		
	}
		request.setAttribute("c", comNum);
		request.setAttribute("w", M.SCORE.win);
		request.setAttribute("l", M.SCORE.lose);
		
	}
	
	public void reset(HttpServletRequest request) {
		win = 0;
		lose = 0;
		request.setAttribute("r", "전적 초기화 완료 !");
	}
}
