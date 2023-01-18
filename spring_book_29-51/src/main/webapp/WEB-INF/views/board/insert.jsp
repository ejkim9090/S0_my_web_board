<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>글쓰기</h4>
<form action = "<%=request.getContextPath() %>/board/insert" method="post" enctype="multipart/form-data">
	Title:<input type="text" name="boardTitle">
	<br>
	Writer:<input type="text" name="boardWriter">
	<br>
	Content:<input type="text" name="boardContent">
	<br>
	<!-- 필드명과 동일하게 하면 오류남. 필드의 자료형이 MultipartFile이 아니므로--> 
	file:<input type="file" name="report">
	<button>글등록</button>
</form>
</body>
</html>