<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 값
		//		(요청)parameter
		//			html에서 만들어낸 값(num1, num2)
		//			request에 저장
		//			String or String[]
				
		//		attribute
		//			Java에서 만들어낸 값(c, d, e)
		//			request에 저장
		//			Object (최상위 객체)
		//
		
		// 이동
		//		<요청>
		//		First => Second : 사용자가 뭔가 액션을 해서 넘어옴
		//			=> request(요청)!!!
		
		//		Second => Third : 그냥 넘어감 (자동)
		//			- redirect : 단순 자동이동 (점검중) => 데이터를 넘기지 못함 only 페이지만 넘김
		//			response.sendRedirect("Third.jsp");
		
		//			- forward : 자동 이동(값이 전달되는)
		// RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
		// rd.forward(request, response);
		
		//			- include : 포함 (Second 속에 Third가 포함되는)
		//			위치 조절이 안됨(Third가 무조건 상단에 들어옴) - 비추
		//			조만간 ! 위치 조절이 되는 include를 보도록 합시다 !!!
		// RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
		// rd.include(request, response);
		
	%>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		
		// RequestDispatcher : 클라이언트로부터 들어온 요청을
		//						원하는 쪽으로 넘기는 기능
		// 호출된 페이지에서는 request.setAttribute(key, value) 메소드를 통해서
		//	넘겨받은 데이터를 처리할 수 있음
		// => Redirect와는 다르게 (데이터처리를 못하는 Redirect) 
		// 		request와 response 객체를 가지고 넘어가기 때문에
		
		
		RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
		
		int c = num1 + num2;
		request.setAttribute("c", c); // c값을 "c"라는이름으로 불러옴(외부에서 불러올 때)(자바에서 만든 값 c)
				
		String d = "ㅋ";
		request.setAttribute("d", d);
		
		Random e = new Random();
		request.setAttribute("e", e);
		
		// rd.forward(request, response);
		rd.include(request, response);
		// response.sendRedirect("Third.jsp")
		
	%>
	<h1>Second</h1><hr>
	<h1>No1 : <%=num1 %></h1>
	<h1>No2 : <%=num2 %></h1>
</body>
</html>