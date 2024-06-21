<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/V.css">
</head>
<body>

	<table id="tbl1">
		<tr>
			<th>
				홀수
			</th>
			<th>
				짝수
			</th>
		</tr>
		<tr>
			<td>
				<a href="HomeController?select=1">
				<img src="1.jpg" id="img">
				</a>
			</td>
			<td>
				<a href="HomeController?select=0">
				<img src="0.jpg" id="img">
				</a>
			</td>
		</tr>
		<tr>
			<td>
				내가 고른 수
				
			</td>
			<td>
				컴퓨터가 고른 수
			</td>
		</tr>
		<tr>
			<td>
				<img src="${sp }" id="img">
			</td>
			<td>
				<img src="${cp }" id="img">
			</td>
		</tr>
		<tr>
			<td>승 : ${w } 패 : ${l }</td>
		</tr>
		<tr>
			<td>
				<form action="HomeController" method="post">
					<button>다시하기</button>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>