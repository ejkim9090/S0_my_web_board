<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/reset.css" type="text/css">
	<link rel="stylesheet" href="./css/main.css" type="text/css">
	<link rel="stylesheet" href="./css/main_share_section.css" type="text/css">
	<!-- TODO: 이곳에 해당 jsp의 css 넣기 -->
    <link href="css/notice.css" rel="stylesheet" type="text/css">
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
    <title>notice</title>
</head>
<body> 
    <div>
<%@include file="/WEB-INF/view/header.jsp" %>
		<!-- section -->
        <div id="section">

            <!-- article -->
            <div class="customer_center">
                <div class="customer_center_wrapper">

                    <!-- 왼쪽메뉴부분 -->
                    <div class="menu">
                        <div class="menu_title">고객센터</div>
                        <ul class="menu_list">
                            <li class="list">
                                <a href="#" class="active list_wrapper">공지사항<span class="arrow"></span></a> <!-- flex -->
                            </li>
                            <li class="list">
                                <a href="#" class="list_wrapper">자주하는 질문<span class="arrow"></span></a> <!-- flex -->
                            </li>
                            <li class="list">
                                <a href="#" class="list_wrapper">1:1 문의<span class="arrow"></span></a> <!-- flex -->
                            </li>
                            <li class="list">
                                <a href="#" class="list_wrapper">대량주문 문의<span class="arrow"></span></a> <!-- flex -->
                            </li>
                        </ul>

                        <a href="#" class="inquiry_wrapper"> <!-- flex -->
                            <div class="inquiry_text_wrapper"> <!-- flex -->
                                <span class="inquiry_text_1">도움이 필요하신가요 ?</span>
                                <span class="inquiry_text_2">1:1 문의하기</span>
                            </div>
                            <span class="arrow_2"></span>
                        </a>
                    </div>

                    <!-- 가운데내용부분 -->
                    <div class="notice">
                        <div class="notice_header_wrapper"> <!-- flex -->
                            <div class="notice_header_text_wrapper"> <!-- flex -->
                                <h2 class="notice_header_text_1">공지사항</h2>
                                <span class="notice_header_text_2">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                            </div>
                        </div>
<c:choose>
	<c:when test="${empty boardlist}">
						<div class="notice_category_wrapper">
						<div class="title">게시글이 없습니다.</div>
						</div>
	</c:when>
	<c:otherwise>
                        <div class="notice_category_wrapper"> <!-- flex -->
                            <div width="50" class="number">번호</div>
                            <div class="title">제목</div>
                            <div width="100" class="writer">작성자</div>
                            <div width="100" class="date">작성일</div>
                        </div>
						<ul class="notice_post_wrapper"> <!-- flex -->
		<c:forEach items="${boardlist}" var="board">
                            <li><a href="#">
                                    <div class="post_wrapper"> <!-- flex -->
                                        <div class="post_number">${board.bno }</div>
                                        <div class="post_title">${board.btitle }</div>
                                        <div class="post_writer">${board.bwriter }</div>
                                        <div class="post_date">${board.bdate }</div>
                                    </div>
                                </a></li>
        </c:forEach>
						</ul>
						<div class="button_wrapper">  <!-- flex -->
                            <div class="button">
                                <button disabled type="button" class="button_previous">
                                    <div class="button_text">이전</div>
                                </button>
<c:if test="${startPage ne 1}">
	<a href="notice?pagenum=${startPage-1 }">이전</a>
</c:if>
<c:forEach begin="${startPage }" end="${endPage }" var="p" step="1">
								<a href="notice?pagenum=${p }">${p }</a>
</c:forEach>
<c:if test="${endPage < pageCnt}">
	<a href="notice?pagenum=${endPage+1 }">다음</a>
</c:if>

                                <button type="button" class="button_next">
                                    <div class="button_text">다음</div>
                                </button>
                            </div>
                        </div>
	</c:otherwise>
</c:choose>


                        
                        
                    </div>
                </div>
            </div>

            <!-- 위로가기 버튼 -->
            <div id="scrollup">
                <a href="#">
                    <span></span>
                </a>
            </div>

<%@include file="/WEB-INF/view/right_nav.jsp" %>
        </div>

        <!-- footer -->
<%@include file="/WEB-INF/view/footer.jsp" %>
    </div>
</body>
</html>