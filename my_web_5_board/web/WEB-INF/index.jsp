<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 계층형 게시판 메인페이지</title>
<link href="<%=request.getContextPath()%>/css/reset.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
</head>
<body>
<h1>메인페이지</h1>
<button class="btn board">게시판</button>
<button class="btn login">로그인</button>


<script>
$(function(){
	$(".btn.board").on("click", BoardClickHandler);
	$(".btn.login").on("click", LoginClickHandler);
});
function BoardClickHandler(){
	console.log("BoardClickHandler");
	location.href = "<%=request.getContextPath()%>/board/list";
}
function LoginClickHandler(){
	console.log("LoginClickHandler");
	location.href = "<%=request.getContextPath()%>/login";
}
</script>
</body>
</html>