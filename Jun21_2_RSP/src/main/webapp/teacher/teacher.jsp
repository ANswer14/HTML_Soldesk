<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<a href="HomeController?userHand=1">
					<img src="../1.jfif">
				</a>
			</td>
			<td>
				<a href="HomeController?userHand=2">
					<img src="../2.jfif">
				</a>
			</td>
			<td>
				<a href="HomeController?userHand=3">
					<img src="../3.jfif">
				</a>
			</td>
		</tr>
		<tr>
			<td class="td1" colspan="3" align="center">
				판정 : ${r }
			</td>
		</tr>
		<tr>
			<td class="td1" colspan="3" align="center">
				${t } ${w } ${d } ${l }
			</td>
		</tr>
		<tr>
			<td class="td1" colspan="3" align="center">
				<form action="HomeController" method="post">
					<button>다시하기</button>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>