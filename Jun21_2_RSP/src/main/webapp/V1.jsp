<%@page import="java.util.ArrayList"%>
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
		int myNum = (Integer) request.getAttribute("myNum");
		int comNum = (Integer) request.getAttribute("comNum");
		ArrayList al = (ArrayList<Integer>) request.getAttribute("al");
	%>

	<form action="HomeController">
		<table>
			<tr>
				<td>
					<button name="judge" value="1">
						<img src="1.jpg">
					</button>
				</td>
				<td>	
					<button name="judge" value="2">
						<img src="2.jpg">
					</button>
				</td>
				<td>
					<button name="judge" value="3">
						<img src="3.jpg">
					</button>
				</td>
			</tr>
			<tr>
				<td>나</td>
				<td>상대</td>
			</tr>
			<tr>
				<td>
				
					<% if(myNum == 1) {%>
						<img src="1.jpg">
						<%}else if(myNum == 2){ %>
						<img src="2.jpg">
						<% }else if(myNum == 3){ %>
						<img src="3.jpg">
						<% }else{ %>
						<img src="minion.webp">
						<% } %>
				</td>
				<td>
				
					<% if(comNum == 1) {%>
						<img src="1.jpg">
						<%}else if(comNum == 2){ %>
						<img src="2.jpg">
						<% }else if(comNum == 3){ %>
						<img src="3.jpg">
						<% }else{ %>
						<img src="minion.webp">
						<% } %>
					
				</td>
			</tr>
			<tr>
				<td>
					승리 : ${al[0] }
				</td>
				<td>
					패배 : ${al[1] }
				</td>
				<td>
					무승부 : ${al[2] }
				</td>
			</tr>
		</table>
	</form>
</body>
</html>