<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/LyhValidChecker.js"></script>
<script type="text/javascript" src="../js/calcCheck.js"></script>
<link rel="stylesheet" href="../css/calc.css">
</head>
<body>
	<form action="CalcController" name="cForm" onsubmit="return calcCheck();">
		<table id="calcTbl">
			<tr>
				<td align="center">
					<input type="number" name="x" placeholder="x" autofocus="autofocus"
					 autocomplete="off">
				</td>	
			</tr>	
			<tr>
				<td align="center">
					<input type="number" name="y" placeholder="y" autofocus="autofocus"
					 autocomplete="off">
				</td>	
			</tr>	
			<tr>
				<td align="center">
					<button>계산</button>
				</td>	
			</tr>	
		</table>
	</form>
</body>
</html>