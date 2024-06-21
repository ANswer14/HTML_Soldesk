<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="HomeController">
		<table>
			<tr>
				<td>
					<button name="가위" value="1">
					<img src="다운로드.jfif">
					</button>
				</td>
				<td>
					<button name="바위" value="2">
					<img src="28658ea5e6.jpg">
					</button>
				</td>
				<td>
					<button name="보" value="3">
					<img src="images.jfif">
					</button>
				</td>
			</tr>
			<tr>
				<td>
					${score.win }
					${scroe.draw }
					${score.lose }
				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>