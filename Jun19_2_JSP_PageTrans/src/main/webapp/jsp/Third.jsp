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
		// Parameter 읽기
		int a = Integer.parseInt(request.getParameter("num1"));
		
		String bbb = request.getParameter("num2");
		Integer bb = Integer.parseInt(bbb);
		int b = bb.intValue();
		
		// Attribute 읽기
		Object ccc = request.getAttribute("c"); // Object
												// Second에서 지정한 "c"라는 이름으로 c값을 불러옴
		Integer cc = (Integer) ccc;				// Object => Integer
		int c = cc.intValue();					// Integer => int
		
		String d = (String) request.getAttribute("d");	// 위의 작업을 한 줄로 줄임
		Random e = (Random) request.getAttribute("e");
		
	%>
	<h1>Third</h1>
	a : <%=a %> <br>
	b : <%=b %> <br>
	c : <%=c %> <br>
	d : <%=d %> <br>
	e : <%=e.nextInt(100) + 1 %> <br>
</body>
</html>