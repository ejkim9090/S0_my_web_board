<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>게시글</h4>
${boardlist }
<c:forEach items="${boardlist }" var="vo">
	<c:if test="${not empty vo.boardRenameFileName }">
	<img src="<%=request.getContextPath() %>${vo.boardRenameFileName }" width="100" height="100">
	</c:if>
</c:forEach>

</body>
</html>