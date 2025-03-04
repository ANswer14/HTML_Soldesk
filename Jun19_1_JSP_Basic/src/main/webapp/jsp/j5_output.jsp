<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function getRandomColor() {
		
		// Math.random()							=> 0 ~ 0.99999
		// Math.random() * 255						=> 0 ~ 254.99999
		// Math.round(Math.random() * 255)			=> 0 ~ 255
		
		let r = Math.round(Math.random() * 255);
		let g = Math.round(Math.random() * 255);
		let b = Math.round(Math.random() * 255);
		
		return "rgb(" + r + "," + g + "," + b +")";
	}
	
	function init() {
		let cv = document.getElementById("cv");
		let pen = cv.getContext("2d");
		let x = 0;
		let y = 0;
		
		setInterval(() => {
			pen.save();
			pen.fillStyle = "rgba(0, 0, 0, 0.2)"; // a : 투명도 (0 ~ 1)
			pen.fillRect(0, 0, 500, 500);
			
			pen.shadowOffSetX = 0;
			pen.shadowOffSetY = 0;
			pen.shadowBlur = 5;
			pen.shadowColor = "white";
			
			x = Math.random() * 500;
			y = Math.random() * 500;
			pen.fillStyle - getRandomColor();
			pen.fillRect(x, y, 20, 20);
			
			pen.restore();
			
		}, 200); // 0.2 초마다 내용을 반복
		
		
	}
</script>
</head>
<body onload="init();">
	<canvas id="cv" width="500px" height="500px"></canvas>
	<hr>
	<%	
		// response.sendRedirect("test.jsp");
		request.setCharacterEncoding("UTF-8");
		String input = request.getParameter("input");
		//split
		String[] strAr = input.split(",");
		int i = 0;
		int[] a = new int[strAr.length];
		int sum = 0;
		/* while(i != strAr.length){
			if(
					strAr[i].equals("0") ||
					strAr[i].equals("1") ||
					strAr[i].equals("2") ||
					strAr[i].equals("3") ||
					strAr[i].equals("4") ||
					strAr[i].equals("5") ||
					strAr[i].equals("6") ||
					strAr[i].equals("7") ||
					strAr[i].equals("8") ||
					strAr[i].equals("9") 
								){
				a[i] = Integer.parseInt(strAr[i]);
			}else{
				a[i] = 0;
			}
			i++;
		} */
		for(String n : strAr){
			try{
				sum += Integer.parseInt(n);
			} catch (Exception e){
			}
		}
/* 		for(int j = 0; j < a.length; j++){
			sum += a[j];
		}
 */	
		
		// StringTokenizer
		StringTokenizer st = new StringTokenizer(input, ",");
 		int sum2 = 0;
 		while (st.hasMoreTokens()){
 			try{
 				sum2 += Integer.parseInt(st.nextToken());
 			} catch (Exception e) {
 			}
 		}
		
		
		
 %>
	합(Split) : <%=sum %>
	합(StringTokenizer) : <%=sum2 %>
	
</body>
</html>