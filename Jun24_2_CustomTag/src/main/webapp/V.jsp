<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
</script>
<link rel="stylesheet" href="css/V.css">
<body>
	<h1> 2024년6월24일 </h1>
	<table id="tbl1">
		<tr>
			<th>
				<a href="HomeController">Home</a>
			</th>
			<th>
				<a href="V_m2.jsp">A</a>
			</th>
			<th>
				<a href="V_m3.jsp">B</a>
			</th>
			<th>
				<a href="V_m4.jsp">C</a>
			</th>
		</tr>
		<tr>
			<td>
				<jsp:include page="${contentPage }"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>