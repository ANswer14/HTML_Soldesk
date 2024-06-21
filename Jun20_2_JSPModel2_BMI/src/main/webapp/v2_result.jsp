<%@page import="com.lyh.jun202.main.Guest"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/v2.css"></link>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Guest g = (Guest) request.getAttribute("g");
		/* double bmi = (Double) request.getAttribute("bmi");
		String result = (String) request.getAttribute("result");
		String fileName = (String) request.getAttribute("fileName");
		
		
		String name = (String)request.getAttribute("name");
		double height = (Double) request.getAttribute("height");
		double weight = (Double) request.getAttribute("weight"); */
		
	%>
	<table id="resultTbl1">
		<tr>
			<th colspan="2">BMI Result</th>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=g.getName() %></td>
		</tr>
		<tr>
			<td>키</td>
			<td><%=g.getHeight() %></td>
		</tr>
		<tr>
			<td>체중</td>
			<td><%=g.getWeight() %></td>
		</tr>
		<tr>
			<td>BMI</td>
			<td><%=g.getBmi() %></td>
		</tr>
		<tr>
			<td colspan="2">
				<marquee>당신은 <%=g.getStatus() %></marquee>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<img src="img/<%=g.getPhoto() %>"style="max-width: 40%;">
			</td>
		</tr>
	</table>
</body>
</html>