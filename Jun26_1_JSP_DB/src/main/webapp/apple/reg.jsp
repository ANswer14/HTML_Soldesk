<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="AppleRegController" onsubmit="return check();" name="regForm" method="post">
	<table>
		<tr>
			<th>
				등록
			</th>
		</tr>
		<tr>
			<td>
				지역<select name="a_location">
					<option value="군포">군포</option>
					<option value="용인">용인</option>
					<option value="춘천" >춘천</option>
					<option value="남양주" >남양주</option>
				</select>
			</td>
			<td>
				색깔<select name="a_color">
					<option value="Black">검정색</option>
					<option value="Blue">파란색</option>
					<option value="Pink">분홍색</option>
					<option value="Yellow">노란색</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				맛<select name="a_taste">
					<option value="sweet">단맛</option>
					<option value="bitter">쓴맛</option>
					<option value="sour">신맛</option>
					<option value="salty">짠맛</option>
				</select>
			</td>
			<td>
				가격<select name="a_price">
					<option value="1000">1000원</option>
					<option value="100">100원</option>
					<option value="1000000">1000000원</option>
					<option value="900">900원</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				소개(100자 이내)<br>
				<textarea rows="1" cols="2" name="a_introduce"></textarea>
			</td>
		</tr>
	</table>	
	<button>확인</button>
	</form>
</body>
</html>