package com.lyh.jun251.calc;

import javax.servlet.http.HttpServletRequest;

public class Calculator {
	
	
	public static void calc(HttpServletRequest request) {
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		
		int z = x + y;
		int a = x - y;
		int b = x * y;
		double c = (double)x / y;
		String divide = String.format("%.2f", c);
		request.setAttribute("sum", z);
		request.setAttribute("subtract", a);
		request.setAttribute("mul", b);
		request.setAttribute("divide", divide);
		
	}
	
}
