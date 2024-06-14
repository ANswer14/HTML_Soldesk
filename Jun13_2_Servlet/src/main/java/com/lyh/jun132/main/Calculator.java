package com.lyh.jun132.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calculator")
public class Calculator extends HttpServlet {
       
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String a = request.getParameter("x");
		String b = request.getParameter("y");
		int a1 = Integer.parseInt(a);
		int b1 = Integer.parseInt(b);
		int sum = a1 + b1;
		int minus = a1 - b1;
		int mul = a1 * b1;
		double division = (double)a1 / b1;
		String sum1 = "" + sum + "";
		String minus1 = "" + minus + "";
		String mul1 = "" + mul + "";
		String division1 = "" + division + "";
		out.print("<html>");
		out.print("<head>");
		out.print("<title>calc</title>");
		out.print("<meta charset='UTF-8'>");
		out.print("</head>");
		out.print("<body>");
		
		out.print("<h1>사칙연산</h1>");
		out.print("<table width='800px' height='200px' border='1'>");
		out.print("<tr>");
		out.print("<td align='center' valign='center'>");
		out.print("x + y = " + sum1 + "<br>");
		out.print("</td>");
		out.print("<td align='center' valign='center'>");
		out.print("x - y = "+ minus1 +"<br>");
		out.print("</td>");
		out.print("<td align='center' valign='center'>");
		out.print("x * y = "+ mul1 + "<br>");
		out.print("</td>");
		out.print("<td align='center' valign='center'>");
		out.print("x / y = "+ division1);
		out.print("</td>");
		out.print("</tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
