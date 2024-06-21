package com.lyh.jun211.main;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class M {
	public static void multiply(HttpServletRequest request) {
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		int z = x * y;
		request.setAttribute("z", z);
		
		Lyh h = new Lyh("이영훈", 3, 50.5, 10.1);
		request.setAttribute("h", h);
		
		ArrayList<Lyh> lvs = new ArrayList<Lyh>();
		lvs.add(h);
		lvs.add(new Lyh("이영훈1", 2, 40.4, 9.4));
		lvs.add(new Lyh("이영훈2", 5, 30.3, 6.6));
		lvs.add(new Lyh("이영훈3", 1, 50.5, 3.3));
		request.setAttribute("lvs", lvs);
	}

}
