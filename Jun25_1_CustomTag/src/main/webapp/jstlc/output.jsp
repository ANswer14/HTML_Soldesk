<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${param.n }</h1>
	
	<!-- 조건문 -->
	 	
	<c:if test="${param.n % 2 == 0 }">
		짝수
	</c:if>
	<hr>
	
	<!--  if-else + switch-case 느낌 -->
	<c:choose>
		<c:when test="${param.n > 10 }">		<!-- // if -->
			10보다 크다
		</c:when>
		<c:when test="${param.n > 5 }">			<!-- // else if -->
			5 ~ 10사이
		</c:when>
		<c:otherwise>							<!-- // else -->
			나머지...
		</c:otherwise>
	</c:choose>
	<hr>
	
	<!-- 반복문 -->
	<%
		/* for (int i = 1; i <= 5; i+=2) {
			System.out.println(i);
			
		} */
	%>
	<c:forEach var="v" begin="1" end="${param.n }" step="2"> <!-- // v라는 변수에 1부터 시작해서 n일때까지 2칸씩 뛰어넘어서 반복해서 담음(Java의 for문) -->
		<marquee>${v }</marquee>
	</c:forEach>
	<hr>
	
	<%
		// for (int i : ar) {
			// System.out.println(i);
		// }
	%>
	<c:forEach var="i" items="${ar }">						<!-- for-each 문과 비슷함 ar이라는 어트리뷰트를 갖고와서 i에담아 출력 -->
		<marquee>${i }</marquee>
	</c:forEach>
	<hr>
	
	<c:forEach var="lyh" items="${al }">
		${lyh.name } - ${lyh.age } <br>
	</c:forEach>
	<%-- <c:forEach var="q" begin="0" end="3">
		<marquee>${al[q].name }</marquee>
		<marquee>${al[q].age }</marquee>
	</c:forEach> --%>
	<hr><%-- 
	<c:forEach var="w" items="${al.age }">
		<marquee>${w }</marquee>
	</c:forEach> --%>
	<!-- try-catch -->
	<c:catch var="myExcept">
		<%int result = 100 / 2; %>
		계산 결과 : <%=result %>
	</c:catch>
	<br>
	<c:catch var="myExcept">
		<% int result = 100 / 0; %>
		계산 결과 : <%=result %>
	</c:catch>
	<c:if test="${myExcept != null }">
		에러 발생 : ${myExcept.message }		<!-- 무슨 Exception이 났는지 알려줌 -->
	</c:if>
	
	<br>
	
	<c:out value="${param.n }ㅋㅋㅋㅋㅋ"></c:out> <br> <!-- 출력 -->
	<c:set var="name" value="김뜨또"></c:set> <!-- 변수 만들기 -->
	<c:out value="${name }" /> <br>
	
	<!-- StringTokenizer -->
	<c:forTokens var="item" items="서울, 대전, 대구, 부산, 찍고, 아하" delims=",">		<!-- var라는 변수에 items를 ,을 기준으로 나눈 값들을 배열로 담아서 모두 출력 -->
		지역 : ${item } <br>
	</c:forTokens>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>