<%@page import="java.util.ArrayList"%>
<%@page import="com.lyh.jun211.main.Lyh"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// EL (Expression Language)
		//		값 받을 때 Java 대신 가능
		//		.jsp에서만 사용 가능
		//			(.jsp를 톰캣이 Servlet으로 바꿀때 EL을 Java 코드로 바꿔줌)
		//		문법 : ${XXX }
		//			연산자 사용 가능
		//			형 변환 자동
		//			값이 없으면 그냥 넘어감
		//			import가 없어도 됨
		
		//		파라미터값 읽기 : ${param.파라미터명 }
		
		//		어트리뷰트값 읽기(int, double, String, ... 포함)
		//			: ${어트리뷰트명 }
		
		//		어트리뷰트값 읽기(객체)
		//			주소값 - ${어트리뷰트명 }
		//			속성값 - ${어트리뷰트명.멤버변수명 }
		
		//		어트리뷰트값 읽기(List, [])
		//			AL, [] 자체 - ${어트리뷰트명 }
		//			인덱스 위치의 객체 - ${어트리뷰트명[인덱스] }
		//			인덱스 위치의 객체 속성 - ${어트리뷰트명[인덱스].멤버변수명 }
		
		//		반복문, 조건문 - EL (X) / CustomTag (O)	
		
	%>
	
	<%
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		int z = (Integer) request.getAttribute("z");
		
		Lyh l = (Lyh) request.getAttribute("h");
		
		ArrayList<Lyh> lvs = (ArrayList<Lyh>) request.getAttribute("lvs");
		
				
	%>
	<h1>결과</h1>
	<%=x %> x <%=y %> = <%=z %> <br>
	<%=l.getName() %> : <%=l.getAge() %> : <%=l.getHeight() %> : <%=l.getWeight() %> <p>
	<%=l %> <p>
	
	<%=lvs %> <p>
	<%=lvs.get(1) %> <p>
	<%=lvs.get(2).getName() %>,	<%=lvs.get(3).getAge() %> <p>
	
	<%
		for (int i = 0; i < lvs.size(); i ++) {
	%>	
		<%=lvs.get(i).getName() %> : <%=lvs.get(i).getAge() %>살 <br>
	<%
		}
	%>
	<hr>
	${param.x } <p>
	${param.y } <p>
	${param.x * param.y } <p>
	${z } <p>
	<hr>
	${h.name } : ${h.age } : ${h.height } : ${h.weight } <p>
	<hr>
	${param.zlkcjfhzlkdjfh } <!-- 값이 없을 때 -->
	<hr>
	${lvs }<p>
	${lvs[1] }	<p>
	${lvs[2].name }, ${lvs[3].age } <p>
	
	
</body>
</html>