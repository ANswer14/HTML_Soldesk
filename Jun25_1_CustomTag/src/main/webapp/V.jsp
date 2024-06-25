<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/LyhValidChecker.js"></script>
<script type="text/javascript" src="js/calcCheck.js"></script>
<link rel="stylesheet" href="css/input.css">
<link rel="stylesheet" href="css/result.css">
<link rel="stylesheet" href="css/V.css">
<link rel="stylesheet" href="css/home.css">
</head>
<body>
	<h1> 2024년6월24일 </h1>
	<table id="tbl1">
		<tr>
			<th>
				<a href="HomeController">Home</a>
			</th>
			<th>
				<a href="CalcController">사칙연산</a>
			</th>
			<th>
				<a href="JSTLCController">JSTL-C</a>
			</th>
			<th>
				<a href="JSTLFController">JSTL-F</a>
			</th>
		</tr>
		<tr>
			<td id="siteContent"><jsp:include page="${contentPage }"></jsp:include></td>
		</tr>
	</table>
</body>
</html>