<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 Error</title>
</head>
<body>
<script>
	var msg = "${errMsg}";
	if(!msg){
		alert(msg);
	}
	location.href = "<%=request.getContextPath()%>/"
</script>
</body>
</html>