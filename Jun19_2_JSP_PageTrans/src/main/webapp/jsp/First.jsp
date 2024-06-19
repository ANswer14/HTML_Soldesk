<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function gogo(){
		location.href = "Second.jsp?num1=100&num2=200";
	}
</script>
</head>
<body>
	<h1>First</h1>
	<hr>
	
	<!-- 
		First.jsp에서 두 숫자를 입력했을 때
		Second.jsp에서 각 숫자들 출력하기
	 -->
	 <a href="Second.jsp?num1=10&num2=20">1. &lt;a&gt;로 [GET방식 요청]</a>
	 <hr>
	 <div onclick="gogo();">2. JavaScript로 [GET방식 요청]</div>
	 <hr>
	 <form action="Second.jsp">
	 숫자1 입력<input name="num1"><p>
	 숫자2 입력<input name="num2"><p>
	 <hr>
	 <button>form + button 조합으로 [GET / POST방식 요청]</button>
	 </form>
</body>
</html>