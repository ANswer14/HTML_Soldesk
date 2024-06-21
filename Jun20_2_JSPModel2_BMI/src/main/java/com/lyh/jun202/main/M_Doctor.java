package com.lyh.jun202.main;



import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



public class M_Doctor {
	public static void judge(HttpServletRequest request) throws UnsupportedEncodingException {
			request.setCharacterEncoding("UTF-8");
			String path = request.getServletContext().getRealPath("img");
			try {
				MultipartRequest mr;
				mr = new MultipartRequest(request, path,
						30 * 1024 * 1024,
						"UTF-8",
						new DefaultFileRenamePolicy());
				String fileName = mr.getFilesystemName("img");
				fileName = URLEncoder.encode(fileName, "UTF-8");
				fileName = fileName.replace("+", " ");
		double height = Double.parseDouble(mr.getParameter("height"));
		double weight = Double.parseDouble(mr.getParameter("weight"));
		double bmi = weight / (height * height / 10000);
		String name = mr.getParameter("name");
		String result = "";
		if (bmi < 18.5) {
			result += "저체중";
		}else if (bmi < 25) {
			result += "정상";
		}else if (bmi < 30) {
			result += "광체중";
		}else if (bmi < 35) {
			result += "경도비만";
		}else if (bmi < 40) {
			result += "중증도비만";
		}else {
			result += "고도비만";
		}
		String bmi2 = String.format("%.2f", bmi);
		double bmi3 = Double.parseDouble(bmi2);
			
			// 객체를 만들어서 한꺼번에 보내자
			Guest g = new Guest(name, height, weight, bmi3, fileName, result);
			request.setAttribute("g", g); // HttpServletRequest 클래스를 통해야만 attribute 생성 가능
			// MultipartRequest는 단순히 form의 내용과 파일등을 받아오기 위한 용도
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
