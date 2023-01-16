<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>로그인</h4>
<form action="<%=request.getContextPath() %>/member/login" method="post">
id:<input type="text" name="id">
<br>
pw:<input type="password" name="passwd">
<br>
<button>로그인</button>
</form>
</body>
</html>