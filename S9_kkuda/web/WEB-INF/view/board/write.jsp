<%@page import="kh.s0.kd.board.model.BoardVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- TODO: 이곳에 해당 jsp의 css 넣기 -->
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/reset.css" type="text/css">
	<link rel="stylesheet" href="./css/main.css" type="text/css">
	<link rel="stylesheet" href="./css/main_share_section.css" type="text/css">
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
    <title>TODO:여기도</title>
</head>
<body>
    <div>
    
    <c:forEach items="${list }" var="vo">
    	${vo.bcontent }
    </c:forEach>
    <% 
    List<BoardVo> a = (List<BoardVo>)(request.getAttribute("list"));
    
    for (BoardVo vo : a){
    	%>
    	<%=vo.getBcontent() %>
    	<%
    }
    %>
    
    <%@include file="/WEB-INF/view/header.jsp" %>
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
	<c:when test="${empty param.bno}">
						<h4>원본글쓰기</h4>
	</c:when>
	<c:otherwise>
						<h4>${param.bno}에 답글쓰기</h4>
	</c:otherwise>
</c:choose>
				<ul class="notice_post_wrapper"> <!-- flex -->
                            <li>
                            <form action="noticeWrite" method="post" enctype="multipart/form-data">
                                 <div >제목:<input type="text" name="btitle"></div>
                                 <div >내용:<textarea name="bcontent" cols="30" rows="5" ></textarea></div>
<!-- 파일첨부 -->
                                 <div> <input type="file" name="uploadFile" multiple="multiple" rows="10"> </div>
                                 <div ><button type="submit">글등록</button></textarea></div>
                            	<input type="hidden" name="bno" value="${param.bno }">
                            </form>
                             </li>
				</ul>
				</div>
			</div>
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