<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		랜덤한 숫자(1 ~ 100)를 넣었을 때, 짝인지 홀인지 알려주는 기능
		뽑은 숫자와 홀짝 여부를 웹페이지에 출력
	 --%>
	 <% Random r = new Random();
	 	int randomNum = r.nextInt(100) + 1; 
	 	String result = null;
	 	if (randomNum % 2 == 1) {
	 		result ="홀";
	 	}else{
	 		result = "짝";
	 	}
	 	%>
	 <%! public int randomNum(){
		Random r = new Random();			 
		 return r.nextInt(100) + 1;
	 }
		 %>
	<%! public String judge(int num){
	 	if (num % 2 == 1) {
	 		return "홀";
	 	}else{
	 		return "짝";
	 	}
	}
	%>
	<%  int num = randomNum();
		String judge = judge(num);
		%>
	 랜덤 숫자 : <%= randomNum%> <p>
	 결과 : <%= result %> <p>
	 랜덤 숫자(메소드) : <%= num%> <p>
	 결과(메소드) : <%= judge %>
</body>
</html>