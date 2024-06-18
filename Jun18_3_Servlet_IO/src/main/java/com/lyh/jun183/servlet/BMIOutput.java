package com.lyh.jun183.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/BMIOutput")
public class BMIOutput extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		String name = request.getParameter("name");
//		String h = request.getParameter("height");
//		double height = Double.parseDouble(h);
//		String w = request.getParameter("weight");
//		double weight = Double.parseDouble(w);
//		String path = request.getServletContext().getRealPath("img");
//		double BMI = weight / (height * height / 10000);
//		
//		MultipartRequest mr = new MultipartRequest(request, path,
//				10 * 1024 * 1024,
//				"UTF-8",
//				new DefaultFileRenamePolicy());
//		String fileName = mr.getFilesystemName("img");
//		fileName = URLEncoder.encode(fileName, "UTF-8");
//		
//		
//		PrintWriter out = response.getWriter();
//		out.print("<html>");
//		out.print("<head><meta charset='UTF-8'> <title>계산</title></head>");
//		out.print("<body>");
//		out.printf("이름 : %s<br>", name);
//		out.printf("키 : %.2f<br>", height);
//		out.printf("몸무게 : %.2f<br>", weight);
//		out.printf("BMI : %.2f<br>", BMI);
//		if (BMI < 15) {
//			out.print("저체중");
//		}else if (BMI < 25) {
//			out.print("정상");
//		}else if (BMI < 30) {
//			out.print("과체중");
//		}else if (BMI < 35) {
//			out.print("경도비만");
//		}else if (BMI < 45) {
//			out.print("중증도비만");
//		}else {
//			out.print("고도비만");
//		}
//		out.printf("<img src='img/%s'>", fileName);
//		out.print("</body>");
//		out.print("</html>");
		response.setCharacterEncoding("UTF-8");
		String path = request.getServletContext().getRealPath("img");
		System.out.println(path);
		
		MultipartRequest mr = new MultipartRequest(request, path,
				30 * 1024 * 1024,
				new DefaultFileRenamePolicy()
				);
		String name = mr.getParameter("name");
		double height = Double.parseDouble(mr.getParameter("height"));
		double weight = Double.parseDouble(mr.getParameter("weight"));
		height /= 100;
		double bmi = weight / (height * height) ;
		String result = "저체중";
		if (bmi >= 40) {
			result = "고도비만";
		}else if (bmi >= 35) {
			result = "중증도비만";
		}else if (bmi >= 25) {
			result = "과체중";
		}else if (bmi >= 18.5) {
			result = "정상";
		}
		
		String image = mr.getFilesystemName("img");
		image = URLEncoder.encode(image, "UTF-8");
		image = image.replace("+", " "); 
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head><meta charset='UTF-8'> <title>계산</title></head>");
		out.print("<body>");
		out.print("<h1>BMI 결과</h1>");
		out.printf("이름 : %s<br>", name);
		out.printf("키 : %.1fcm<br>", height * 100);
		out.printf("몸무게 : %.1fkg<br>", weight);
		out.printf("BMI : %.2f<br>", bmi);
		out.printf("<h2>당신은 %s입니다</h2><p>", result);
		
		
		out.printf("<img src='img/%s'>", image);
		out.print("</body>");
		out.print("</html>");
		
		
		
		
		
	}
}
