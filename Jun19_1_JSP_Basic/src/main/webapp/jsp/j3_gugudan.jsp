<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		float: left;
		margin-right: 10px;
	}
</style>
</head>
<body>
			<%-- 	<%
					String dan = "";
					String result = "";
					for(int i = 0; i < 9; i++){
						for(int j = 1; j < 9; j++){
							if(i == 0){
								dan += (j + 1) + "단 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
							}
						}
						for(int j = 1; j < 9; j++){
							result += (j + 1) + "X" + (i + 1) + "=" + (i + 1) * (j + 1) + " &nbsp;&nbsp;";
							if(i == 0){
								result += "&nbsp;";
							}
						}
							result+= "<br>";
					}
				%> 
	<table>
		<tr>
			<td>
				<%=dan %><br>
				<%=result %><br>
			</td>
		</tr>
	</table> --%>
	<%
		for(int i = 2; i<= 9; i++){
	%>
		<table border="1">
			<tr>
				<th><%=i %>단
			</tr>
		<% 
			for(int j = 1; j <= 9; j++){
		%>
			<tr>
				<td><%=i %>X<%=j %>=<%=i * j %></td>
			</tr>
		
	<%
			}
	%>
	<%
			}
	%>
		</table>
	
	
</body>
</html>