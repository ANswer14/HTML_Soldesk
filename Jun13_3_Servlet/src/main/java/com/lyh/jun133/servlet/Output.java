package com.lyh.jun133.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Output")
public class Output extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
//		String ID = request.getParameter("ID");
//		String PW = request.getParameter("PW");
//		String gender = request.getParameter("gender");
//		String location = request.getParameter("location");
//		String[] hobby = { request.getParameter("hobby1"), request.getParameter("hobby2"), 
//				request.getParameter("hobby3"), request.getParameter("hobby4"), request.getParameter("hobby5") };
//		String introduce = request.getParameter("introduce");
//		
//		
//		out.print("<html>");
//		out.print("<head><meta charset='UTF-8'><title>가입 완료!</title></head>");
//		out.print("<body>");
//		out.print("<h1><회원가입 완료!></h1>");
//		out.print("ID : " + ID);
//		out.print("<br>PW : " + PW);
//		out.print("<br>성별 : " + gender);
//		out.printf("<br>위치 : %s<br>", location);
//		for (int i = 0; i < hobby.length; i++) {
//			if (hobby[i].equals("")) {
//				
//			}else {
//				out.printf("취미%d : %s<br>", i + 1, hobby[i]);
//			}
//		}
//		out.print("자기소개 : " + introduce);
//		out.print("</body>");
//		
//		out.print("</html>");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String gd = request.getParameter("GD");
		String lc = request.getParameter("LC");
		String[] hb = request.getParameterValues("HB");
		String ind = request.getParameter("IND");
		
		// textarea에서 엔터 : \r\n
		// 웹페이지에서 줄바꾸기 : <br>
		ind = ind.replace("\r\n", "<br>");
		out.print("<html>");
		out.print("<head><title>회원가입결과</title><meta charset='UTF-8'></head>");
		out.print("<body>");
		
		out.print("<h1>가입 결과</h1>");
		out.printf("<h2>ID: %s</h2>", id);
		out.printf("<h2>PW: %s</h2>", pw);
		out.printf("<h2>성별: %s</h2>", gd);
		out.printf("<h2>지역: %s</h2>", lc);
		if (hb != null) { // 취미를 선택하지 않았을 때를 대비해서
			out.print("<h2>취미 : ");
			for (String s : hb) { // 배열 열어서 하나씩 풀기
				out.print(s + " ");
			}
			out.print("</h2>");
		}
		out.printf("<h2>자기소개 : %s</h2>", ind);
		out.print("</body>");
		out.print("</html>");
	}

}
