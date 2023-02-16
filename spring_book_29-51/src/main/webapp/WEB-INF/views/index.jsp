<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역별 대기오염</title>
</head>
<body>
	<h2>OpenAPI JSON</h2>
	<form action="<%=request.getContextPath() %>/air.do" method="get">
		지역:<input type="text" name="location">
		<input type="hidden" name="param" value="json">
		<button>조회</button>
	</form>
</body>
</html>