<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${list }
	<table border="1">
		<tr>
			<th>측정소명</th>
			<th>측정망 정보</th>
			<th>측정일시</th>
			<th>통합대기환경지수</th>
			<th>통합대기환경수치</th>
		</tr>
		<c:forEach items="${list }" var="dto">
			<tr>
				<th>${dto.stationName }</th>
				<th>${dto.mangName }</th>
				<th>${dto.dataTime }</th>
				<th>${dto.khaiValue }</th>
				<th>${dto.khaiGrade }</th>
			</tr>
		</c:forEach>
	</table>

</body>
</html>