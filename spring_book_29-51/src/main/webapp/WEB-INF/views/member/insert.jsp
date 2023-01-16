<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 회원 가입 jsp
<form action = "<%=request.getContextPath() %>/member/insert" method="post">
	id:<input type="text" name="id">
	<br>
	passwd:<input type="password" name="passwd">
	<br>
	name:<input type="text" name="name">
	<br>
	email:<input type="text" name="email">
	<br>
	gender:<select name="gender">
	<option value="M">남</option>
	<option value="F">여</option>
	</select>
	<br>
	age:<input type="number" name="age">
	<br>
	phone:<input type="text" name="phone">
	<br>
	address:<input type="text" name="address">
	<button>회원가입</button>
</form>
</body>
</html>