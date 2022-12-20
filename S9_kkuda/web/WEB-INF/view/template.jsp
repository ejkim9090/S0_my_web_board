<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/reset.css" type="text/css">
	<link rel="stylesheet" href="./css/main.css" type="text/css">
	<link rel="stylesheet" href="./css/main_share_section.css" type="text/css">
	<!-- TODO: 이곳에 해당 jsp의 css 넣기 -->
	
    <script src="./js/jquery-3.6.1.js"></script>
    <script src="./js/main_share_scroll_action.js"></script>
    <script src="./js/main_header.js"></script>
    <!-- TODO: 이곳에 해당 jsp의 js 넣기 -->
    

    <!-- 전체공통 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        html, button, input, select, textarea, span, a, p {
            font-family: "Noto Sans KR", "malgun gothic", /*AppleGothic*/dotum, sans-serif;
        }
    </style>
    <title>TODO:여기도</title>
</head>
<body>
    <div>
    <%@include file="/WEB-INF/view/header.jsp" %>
        <div id="section">
            <div class="main_section">
                <!-- 맨위 상단 섹션-->
                <!-- 첫번째 섹션 -->
                <!-- 상단 버튼 추가 섹션 -->
                <!-- 상단 버튼 추가 섹션 -->
                <!-- 컬리의 레시피 section -->
                <!-- 광고 -->
                <!-- 3번째 section - instagram -->
			</div>
            <div id="scrollup">
                <a href="#">
                    <span></span>
                </a>
            </div>
            <%@include file="/WEB-INF/view/right_nav.jsp" %>
        </div>
    <%@include file="/WEB-INF/view/footer.jsp" %>
    </div>
</body>
</html>