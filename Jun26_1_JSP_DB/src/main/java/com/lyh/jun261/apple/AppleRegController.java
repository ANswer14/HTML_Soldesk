package com.lyh.jun261.apple;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AppleRegController")
public class AppleRegController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setAttribute("contentPage", "apple/reg.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
				
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		AppleDAO.getAppledao().setApple(request);
		
		AppleDAO.getAppledao().getApple(request);
		
		request.setAttribute("contentPage", "apple/apple.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
	