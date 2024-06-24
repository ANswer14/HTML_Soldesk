<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/V_NB.css"></link>
<script type="text/javascript" src="js/LyhValidChecker.js"></script>
<script type="text/javascript" src="js/V_validCheck.js"></script>
<script type="text/javascript" src="js/go.js"></script>
</head>
<body>
		<table id="tbl1">
			<tr>
				<td id="formtd" align="center">
					<form name="NBForm" action="HomeController" onsubmit="return NBCheck();">
					<input id="ex" placeholder="숫자 3자, 중복X" readonly="readonly"><p>
					숫자 입력<input name="number" placeholder="123" id="input">
					<hr>
					<button >확인</button>
					</form>
				</td>
			</tr>
		</table>
		<table id="tbl2">
			<tr id="answer">
				<th>
					결과
				</th>
				<th>
					정답
				</th>
			</tr>
			<tr>
				<td align="center" id="result1">
					내가 입력한 수 : ${param.number }
				</td>
				<td align="center" id="answer1">
					${r }
				</td>
			</tr>
			<tr>
				<td align="center">
					볼 : ${ball } 스트라이크 : ${strike }
				</td>
			</tr>
			<tr>
				<td>
					${t }트
				</td>
			</tr>
		</table>
		<div>${btn }</div>
		<div>${con }</div>
		
</body>
</html>