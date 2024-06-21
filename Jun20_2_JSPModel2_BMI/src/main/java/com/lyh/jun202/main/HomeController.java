package com.lyh.jun202.main;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


// BMI를 JSPModel2 방식으로 만들어볼건데
// 의사와 환자가 데이터를 주고 받는 형태로 만들고 싶음
//	환자가 정보를 주면 의사가 그 정보를 가지고 계산을 하는 형태
//		=> 를 출력
//	(이름 키 몸무게 사진)

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		request.getRequestDispatcher("v1_patient.html").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		M_Doctor.judge(request);
		request.getRequestDispatcher("v2_result.jsp").forward(request, response);
		
	}

}
