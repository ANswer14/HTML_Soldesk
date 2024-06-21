package com.lyh.jun212.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lyh.jun212.teacher.RSPGameEngine;

// Java + JSP + CSS + Servlet
//	가위바위보 게임 페이지를 만들 것
//	디자인은 알아서... (가위/바위/보 중에 하나를 누르면 게임 한판 진행)
//	WAS 종료할 때까지 전적은 쌓이게 => 매판 진행할 때마다 전적이 보이도록(바뀌도록)

// 문제 : GET방식 요청을 할 때마다 전적이 안쌓임
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		if (!request.getParameterNames().hasMoreElements()) {
//			request.getRequestDispatcher("V1.html").forward(request, response);
//		} else {
//			M_judge.judge(request);
//			request.getRequestDispatcher("V1.jsp").forward(request, response);
//		}
		//////////////////////////////
		if (!request.getParameterNames().hasMoreElements()) {
			request.setAttribute("uh", " ");
			request.setAttribute("ch", " ");
		}else {
			RSPGameEngine rge = RSPGameEngine.getRge();
			rge.doRSP(request);
		}
		
		request.getRequestDispatcher("teacher.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RSPGameEngine rge = RSPGameEngine.getRge();
		rge.reset(request);
		request.setAttribute("uh", "../minion.webp");
		request.setAttribute("ch", "../minion.webp");
		request.getRequestDispatcher("teacher.jsp").forward(request, response);
	}

}
