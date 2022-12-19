<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main_share_section.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/main_section01.css">
    <script src="${pageContext.request.contextPath }/js/jquery-3.6.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/main_share_scroll_action.js"></script>
    <script src="${pageContext.request.contextPath }/js/main_header.js"></script>
    <script src="${pageContext.request.contextPath }/js/index_section_action.js"></script>
    <title>메인페이지</title>
    <!-- 전체공통 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        html, button, input, select, textarea, span, a, p {
            font-family: "Noto Sans KR", "malgun gothic", /*AppleGothic*/dotum, sans-serif;
        }
    </style>
</head>
<body>
    <div>
        <div id="event">
            <div class="e_link">
                <a href="#"><p>지금 가입하고 인기상품 <strong>100원</strong>에 받아가세요!</p></a>
                <button id="event_btn" type="button"><img src="https://res.kurly.com/pc/ico/1908/ico_close_fff_84x84.png" alt="e_close"></button>
            </div>
        </div>
        <div id="header">
            <div class="h_first">
                <div class="h_f_1">
                    <div>
                  	<c:choose>
                  		<c:when test="${empty loginSsInfo}">
                    		<a href="${pageContext.request.contextPath }/join">회원가입</a>
	                        <div>|</div>
	                        <a href="${pageContext.request.contextPath }/login">로그인</a>
	                        <div>|</div>
                   		</c:when>
                   		<c:otherwise>
                    		${loginSsInfo.mname }
	                        <div>|</div>
	                        <a href="${pageContext.request.contextPath }/logout">로그아웃</a>
	                        <div>|</div>
                   		</c:otherwise>
                   	</c:choose>
                        
                        
                        
                        <div>
                            <a href="${pageContext.request.contextPath }/notice.html">고객센터
                                <img src="https://res.kurly.com/pc/ico/1908/ico_down_16x10.png">
                            </a>
                            <div class="h_f_1_a3_hover" onclick="location.href='${pageContext.request.contextPath }/notice.html';">
                                <div>공지사항</div>
                                <div>자주하는 질문</div>
                                <div>1:1 문의</div>
                                <div>대량주문 문의</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="h_f_2">
                    <div id="main_logo" onclick="location.href='${pageContext.request.contextPath }/main';">
                        <img src="${pageContext.request.contextPath }/images/마켓컬리로고.svg" alt="main_logo">
                        <button type="button">마켓컬리</button>
                    </div>
                    <div id="search">
                        <input type="text" placeholder="검색어를 입력해주세요.">
                        <button type="button"><img src="${pageContext.request.contextPath }/images/search_logo.svg"></button>
                    </div>
                    <div id="buttons">
                        <button type="button"></button>
                        <button type="button"></button>
                        <button type="button" onclick="location.href='${pageContext.request.contextPath }/shopping_basket_guest.html';"></button>
                        <div class="buttons_first_hover">
                            <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMThweCIgaGVpZ2h0PSIxMXB4IiB2aWV3Qm94PSIwIDAgMTggMTEiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+ZHJvcGRvd25fdGFpbDwvdGl0bGU+CiAgICA8ZyBpZD0i67ew7Yuw7Lus66asLVBoYXNlLTEiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSJQQ19Ib21lX01hcmtldF/sp4TsnoXsi5wiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xMTExLjAwMDAwMCwgLTEzMi4wMDAwMDApIj4KICAgICAgICAgICAgPGcgaWQ9ImRyb3Bkb3duX2JveCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTc4LjAwMDAwMCwgMTMyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgPGcgaWQ9ImRyb3Bkb3duX3RhaWwiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEzMy4wMDAwMDAsIDAuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgZmlsbD0iI0ZGRkZGRiIgeD0iMCIgeT0iMCIgd2lkdGg9IjE4IiBoZWlnaHQ9IjExIj48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgZmlsbD0iI0RERERERCIgeD0iMCIgeT0iMTAiIHdpZHRoPSIxOCIgaGVpZ2h0PSIxIj48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTksMCBMMTcuMjUsMTEgTDAuNzUsMTEgTDksMCBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIGZpbGw9IiNEREREREQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8cGF0aCBkPSJNOSwxLjY1IEwxNi4wMTYsMTAuOTk5IEwyLjAwOCwxMC45OTkgTDksMS42NSBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIGZpbGw9IiNGRkZGRkYiPjwvcGF0aD4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+">
                            <img src="${pageContext.request.contextPath }/images/흰색 칸.png">
                            <div>
                                <p><strong>배송지를 등록</strong>하고<br>구매 가능한 상품을 확인하세요!</p>
                                <div>
                                    <button onclick="location.href='${pageContext.request.contextPath }/login.html';"><span>로그인</span></button>
                                    <button><img src="${pageContext.request.contextPath }/images/배송지search_logo.png"><span>주소검색</span></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="h_second">
                <div class="h_s_1">
                    <div id="s_category">
                        <span></span>
                        <span>카테고리</span>
                        <div>
                            <div>
                                <ul id="s_c_list">
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/55/jZZJOSgsf4R9TAvXrdQ999WW2gTFr0cv0Wd21bla.png" alt="">
                                            <span>선물하기</span>
                                        </div>
                                        <ul>
                                            <li><div><span>홍삼·즙</span></div></li>
                                            <li><div><span>건강식품</span></div></li>
                                            <li><div><span>과일·수산·정육</span></div></li>
                                            <li><div><span>베이커리·커피·차</span></div></li>
                                            <li><div><span>간편식·오일·캔류</span></div></li>
                                            <li><div><span>뷰티·향수·꽃</span></div></li>
                                            <li><div><span>리빙·생활·유아동</span></div></li>
                                        </ul>
                                    </li>
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/6/kwat5Szmq0ONTpMd4hlbcGmCOBd3FsMPyTzWxKBb.png" alt="">
                                            <span>샐러드·간편식</span>
                                        </div>
                                        <ul>
                                            <li><div><span>샐러드·닭가슴살</span></div></li>
                                            <li><div><span>도시락·밥류</span></div></li>
                                            <li><div><span>파스타·면류</span></div></li>
                                            <li><div><span>떡볶이·튀김·순대</span></div></li>
                                            <li><div><span>피자·핫도그·만두</span></div></li>
                                            <li><div><span>폭립·떡갈비·안주</span></div></li>
                                            <li><div><span>죽·스프·카레</span></div></li>
                                            <li><div><span>선식·시리얼</span></div></li>
                                        </ul>
                                    </li>
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/5/CkyoRnUe2q9ngIOLW3bJPRYBw9xq9BHZ3fNQIq1c.png" alt="">
                                            <span>국·반찬·메인요리</span>
                                        </div>
                                        <ul>
                                            <li><div><span>국·탕·찌개</span></div></li>
                                            <li><div><span>밀키트·메인요리</span></div></li>
                                            <li><div><span>밑반찬</span></div></li>
                                            <li><div><span>김치·젓갈·장류</span></div></li>
                                            <li><div><span>두부·어묵·부침개</span></div></li>
                                            <li><div><span>베이컨·햄·통조림</span></div></li>
                                        </ul>
                                    </li>
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/7/CL0LpJynh8Nh2Vqmnm62RVTPePWVU84VkWwQPjdO.png" alt="">
                                            <span>면·양념·오일</span>
                                        </div>
                                        <ul>
                                            <li><div><span>파스타·면류</span></div></li>
                                            <li><div><span>식초·소스·드레싱</span></div></li>
                                            <li><div><span>양념·액젓·장류</span></div></li>
                                            <li><div><span>식용유·참기름·오일</span></div></li>
                                            <li><div><span>소금·설탕·향신료</span></div></li>
                                            <li><div><span>밀가루·가루·믹스</span></div></li>
                                        </ul>
                                    </li>
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/4/jj6zZg2sY94aytlc2k1udIAmWWvmUignR9VYaMcm.png" alt="">
                                            <span>정육·계란</span>
                                        </div>
                                        <ul>
                                            <li><div><span>국내산 소고기</span></div></li>
                                            <li><div><span>수입산 소고기</span></div></li>
                                            <li><div><span>돼지고기</span></div></li>
                                            <li><div><span>계란류</span></div></li>
                                            <li><div><span>닭·오리고기</span></div></li>
                                            <li><div><span>양념육·돈까스</span></div></li>
                                            <li><div><span>양고기</span></div></li>
                                        </ul>
                                    </li>
                                    <li class="s_c_list_li" onclick = "location.href='${pageContext.request.contextPath }/category.html';">
                                        <div>
                                            <img src="https://collection-image.kurly.com/site-category-groups/1/4IYbd0CEWkokpqiN00CAL9cDC2Q7nT101TDEn0tF.png" alt="">
                                            <span>채소</span>
                                        </div>
                                        <ul>
                                            <li><div><span>친환경</span></div></li>
                                            <li><div><span>고구마·감자·당근</span></div></li>
                                            <li><div><span>시금치·쌈채소·나물</span></div></li>
                                            <li><div><span>브로콜리·파프리카·양배추</span></div></li>
                                            <li><div><span>양파·대파·마늘·배추</span></div></li>
                                            <li><div><span>오이·호박·고추</span></div></li>
                                            <li><div><span>냉동·이색·간편채소</span></div></li>
                                            <li><div><span>콩나물·버섯</span></div></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul id="s_list">
                        <li onclick = "location.href='${pageContext.request.contextPath }/category.html';"><span class="s_click">신상품</span></li>
                        <li onclick = "location.href='${pageContext.request.contextPath }/category.html';"><span class="s_click">베스트</span></li>
                        <li onclick = "location.href='${pageContext.request.contextPath }/category.html';"><span class="s_click">알뜰쇼핑</span></li>
                        <li onclick = "location.href='${pageContext.request.contextPath }/category.html';"><span class="s_click">특가/혜택</span></li>
                    </ul>
                    <div id="s_link">
                        <a><span>샛별 · 낮</span> 배송안내</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="section">
            <div class="main_section">
                <!-- 맨위 상단 섹션-->
                <div>
                    <div class="m_s_top">
                        <div class="m_s_top_swiper_wrap">
                            <div class="m_s_top_swiper">
                                <div><a><img src="${pageContext.request.contextPath }/images/메인섹션 맨상단1.avif"></a></div>
                                <div><a><img src="${pageContext.request.contextPath }/images/메인섹션 맨상단2.avif"></a></div>
                                <div><a><img src="${pageContext.request.contextPath }/images/메인섹션 맨상단3.avif"></a></div>
                                <div><a><img src="${pageContext.request.contextPath }/images/메인섹션 맨상단1.avif"></a></div>
                            </div>
                            <button id="m_s_top_bLeft"></button>
                            <button id="m_s_top_bRight"></button>
                            <div class="m_s_top_text">1 / 3</div>
                        </div>
                    </div>
                </div>
                <!-- 첫번째 섹션 -->
                <div>               
                    <div class="m_s_1">
                        <div class="m_s_1_title">
                            <div class="m_s_1_title_1">
                                <span class="m_s_1_title_1_span">
                                    이 상품 어때요?
                                </span>
                            </div>
                        </div>
                        <div class="m_s_1_list">
                            <div class="m_s_1_list_swiper">
                                <div class="m_s_1_list_swiper_wrap">     
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_1_list_1">
                                        <div class="m_s_1_list_1_product">
                                            <div class="m_s_1_list_1_product_1">
                                                <div class="m_s_1_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_1_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_1_list_1_product_1_content">
                                                    <h3 class="m_s_1_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_1_list_1_product_1_content_price">
                                                        <div class="m_s_1_list_1_product_1_content_price_1">
                                                            <span class="m_s_1_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" id="m_s_1_list_button_left"></button>
                            <button type="button" id="m_s_1_list_button_right"></button>
                        </div>
                    </div>
                </div>
                <!-- 상단 버튼 추가 섹션 -->
                <div>               
                    <div class="m_s_4">
                        <div class="m_s_4_title">
                            <div class="m_s_4_title_1">
                                <span class="m_s_4_title_1_span">
                                    MD의 추천
                                </span>
                            </div>
                        </div>
                        <ul class="m_s_4_ul">
                            <li>
                                <button type="button" class="m_s_4_ul_button">샐러드·간편식</button>
                            </li>
                            <li>
                                <button type="button" class="m_s_4_ul_button">국·반찬·메인요리</button>
                            </li>
                            <li>
                                <button type="button" class="m_s_4_ul_button">면·양념·오일</button>
                            </li>
                            <li>
                                <button type="button" class="m_s_4_ul_button">정육·계란</button>
                            </li>
                            <li>
                                <button type="button" class="m_s_4_ul_button">채소</button>
                            </li>
                        </ul>
                        <div class="m_s_4_list">
                            <div class="m_s_4_list_swiper">
                                <div class="m_s_4_list_swiper_wrap">
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button" onclick = "location.href='${pageContext.request.contextPath }/shopping_basket_loggedIn.html';">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘" >
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘" onclick= "location.href='${pageContext.request.contextPath }/shopping_basket_loggedIn.html';">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div><div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div><div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_4_list_1">
                                        <div class="m_s_4_list_1_product">
                                            <div class="m_s_4_list_1_product_1">
                                                <div class="m_s_4_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_4_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_4_list_1_product_1_content">
                                                    <h3 class="m_s_4_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_4_list_1_product_1_content_price">
                                                        <div class="m_s_4_list_1_product_1_content_price_1">
                                                            <span class="m_s_4_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <button type="button" id="m_s_4_list_button_left"></button>
                            <button type="button" id="m_s_4_list_button_right"></button>
                        </div>
                        <a href="${pageContext.request.contextPath }/category.html" class="m_s_4_a"><span class="m_s_4_a_span">샐러드·간편식 전체보기</span></a>
                    </div>
                </div>
                <!-- 상단 버튼 추가 섹션 -->
                <div>               
                    <div class="m_s_5">
                        <div class="m_s_5_title">
                            <div class="m_s_5_title_1">
                                <span class="m_s_5_title_1_span_1">
                                    지금 가장 핫한 상품
                                </span>
                                <span class="m_s_5_title_1_span_2">
                                    <img src="${pageContext.request.contextPath }/images/섹션타이틀이동.svg" alt="더보기 아이콘">
                                </span>
                            </div>
                        </div>
                        <div class="m_s_5_list">
                            <div class="m_s_5_list_swiper">
                                <div class="m_s_5_list_swiper_wrap">
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653038246425l0.jpeg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        춘천 국물 닭갈비 떡볶이
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                12,500 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1654826608504l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [워커힐] 전복 삼계탕
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                34,000 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m_s_5_list_1">
                                        <div class="m_s_5_list_1_product">
                                            <div class="m_s_5_list_1_product_1">
                                                <div class="m_s_5_list_1_product_1_img">
                                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1514440709588l0.jpg" alt="상품 이미지">
                                                    <button type="button" class="m_s_5_list_1_product_1_button">
                                                        <img src="${pageContext.request.contextPath }/images/상품_장바구니.svg" alt="장바구니 아이콘">
                                                    </button>
                                                </div>
                                                <div class="m_s_5_list_1_product_1_content">
                                                    <h3 class="m_s_5_list_1_product_1_content_title">
                                                        [LOTS OF LOVE] 입맛듬뿍 불낙볶음밥 (리뉴얼)
                                                    </h3>
                                                    <div class="m_s_5_list_1_product_1_content_price">
                                                        <div class="m_s_5_list_1_product_1_content_price_1">
                                                            <span class="m_s_5_list_1_product_1_content_price_1_1">
                                                                6,800 원
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" id="m_s_5_list_button_left"></button>
                            <button type="button" id="m_s_5_list_button_right"></button>
                        </div>
                    </div>
                </div>
                <!-- 컬리의 레시피 section -->
                <div>
                    <div class="m_s_2">
                        <div class="m_s_2_title">
                            <div class="m_s_2_title_1">
                                <span class="m_s_2_title_1_span_1">
                                    컬리의 레시피
                                </span>
                                <span class="m_s_2_title_1_span_2">
                                    <img src="${pageContext.request.contextPath }/images/섹션타이틀이동.svg" alt="더보기 아이콘">
                                </span>
                            </div>
                        </div>
                        <div class="m_s_2_list">
                            <div class="m_s_2_list_swiper">
                                <div class="m_s_2_list_swiper_wrap">
                                    <div class="m_s_2_list_1">
                                        <div class="m_s_2_list_1_product">
                                            <a href="${pageContext.request.contextPath }/recipe_page.html" class="m_s_2_list_1_product_a">
                                                <div class="m_s_2_list_1_product_a_img">
                                                    <img src="${pageContext.request.contextPath }/images/로스티드 닭 다리_날개.webp">
                                                </div>
                                                <div class="m_s_2_list_1_product_a_d">
                                                    로스티드 닭 다리&날개
                                                </div>
                                            </a>
                                        </div>
                                        <div class="m_s_2_list_1_product">
                                            <a href="${pageContext.request.contextPath }/recipe_page.html" class="m_s_2_list_1_product_a">
                                                <div class="m_s_2_list_1_product_a_img">
                                                    <img src="${pageContext.request.contextPath }/images/로스티드 닭 다리_날개.webp">
                                                </div>
                                                <div class="m_s_2_list_1_product_a_d">
                                                    로스티드 닭 다리&날개
                                                </div>
                                            </a>
                                        </div>
                                        <div class="m_s_2_list_1_product">
                                            <a href="${pageContext.request.contextPath }/recipe_page.html" class="m_s_2_list_1_product_a">
                                                <div class="m_s_2_list_1_product_a_img">
                                                    <img src="${pageContext.request.contextPath }/images/로스티드 닭 다리_날개.webp">
                                                </div>
                                                <div class="m_s_2_list_1_product_a_d">
                                                    로스티드 닭 다리&날개
                                                </div>
                                            </a>
                                        </div>
                                        <div class="m_s_2_list_1_product">
                                            <a href="${pageContext.request.contextPath }/recipe_page.html" class="m_s_2_list_1_product_a">
                                                <div class="m_s_2_list_1_product_a_img">
                                                    <img src="${pageContext.request.contextPath }/images/로스티드 닭 다리_날개.webp">
                                                </div>
                                                <div class="m_s_2_list_1_product_a_d">
                                                    로스티드 닭 다리&날개
                                                </div>
                                            </a>
                                        </div>
                                        <div class="m_s_2_list_1_product">
                                            <a href="${pageContext.request.contextPath }/recipe_page.html" class="m_s_2_list_1_product_a">
                                                <div class="m_s_2_list_1_product_a_img">
                                                    <img src="${pageContext.request.contextPath }/images/로스티드 닭 다리_날개.webp">
                                                </div>
                                                <div class="m_s_2_list_1_product_a_d">
                                                    로스티드 닭 다리&날개
                                                </div>
                                            </a>
                                        </div>
                                        <div class="m_s_2_list_1_product">
                                            <div class="m_s_2_list_1_product_icon">
                                                <div class="m_s_2_list_1_product_icon_1">
                                                    <span></span>
                                                    <span>전체보기</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" id="m_s_2_list_button_left"></button>
                            <button type="button" id="m_s_2_list_button_right"></button>
                        </div>
                    </div>
                </div>
                <!-- 광고 -->
                <div>
                    <div class="m_s_a">
                        <div class="m_s_a_1">
                            <a class="m_s_a_1_1">
                                <img src="${pageContext.request.contextPath }/images/광고.webp" alt>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- 3번째 section - instagram -->
                <div>
                    <div class="m_s_3">
                        <div class="m_s_3_title">
                            <div><span>인스타그램 고객 후기</span></div>
                            <p>더 많은 고객 후기가 궁금하다면?</p>
                        </div>
                        <div class="m_s_3_list">
                            <button type="button" id="insta_fButton"></button>
                            <div class="m_s_3_list_swiper">
                                <div class="m_s_3_list_swiper_wrap">
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img1.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img2.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                    <div class="insta_div"><a href="https://www.instagram.com/marketkurly_regram/"><img src="${pageContext.request.contextPath }/images/instagram_img3.jpg"></a></div>
                                </div>
                            </div>
                            <button type="button" id="insta_sButton"></button>
                        </div>
                        <div class="m_s_3_tlink">
                            <p>더 많은 고객 후기가 궁금하다면?</p>
                            <a href="https://www.instagram.com/marketkurly_regram/" target="_blank" rel="nooperner noreferrer">@marketkurly_regram</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="scrollup">
                <a href="#">
                    <span></span>
                </a>
            </div>
            <nav id="right_nav">
                <a class="right_nav_iLink"><img src="https://res.kurly.com/_next/static/images/deliveryInfo_20220701-a7b19dac069402e4b2aea7edbed0f6e0.png"></a>
                <ul class="right_nav_list">
                    <li><a>등급별 혜택</a></li>
                    <li><a href="${pageContext.request.contextPath }/recipe_list.html">레시피</a></li>
                </ul>
            </nav>
        </div>
        <div id="footer">
            <div class="f_f">
                <div class="f_f_1">
                    <div class="f_f_1_1">
                        <h2>고객행복센터</h2>
                        <p>1644-1107<span>월~토요일 오전 7시 - 오후 6시</span></p>
                        <div>
                            <div>
                                <button>카카오톡 문의</button>
                                <div>월~토요일 | 오전7시-오후6시<br>일/공휴일 | 오전7시-오후1시</div>
                            </div>
                            <div>
                                <button>1:1 문의</button>
                                <div>365일<br>고객센터 운영시간에 순차적으로 답변드리겠습니다.</div>
                            </div>
                            <div>
                                <button>대량주문 문의</button>
                                <div>월~금요일 | 오전9시-오후6시<br>점심시간 | 낮12시-오후1시</div>
                            </div>
                        </div>
                        <div>비회원 문의 : <a href="#">help@kurlycorp.com</a>
                            <br>비회원 대량주문 문의 : <a href="#">kurlygift@kurlycorp.com</a>
                        </div>
                    </div>
                    <div class="f_f_1_2">
                        <ul>
                            <li><a>컬리소개</a></li>
                            <li><a>컬리소개영상</a></li>
                            <li><a>인재채용</a></li>
                            <li><a>이용약관</a></li>
                            <li><a>개인정보처리방침</a></li>
                            <li><a>이용안내</a></li>
                        </ul>
                        <div>
                            법인명 (상호) : 주식회사 컬리 | 사업자등록번호 : 261-81-23567 <a>사용자정보 확인</a>
                            <br>통신판매업 : 제 2018-서울강남-01646 호 | 개인정보보호책임자 : 이원준
                            <br>주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) | 대표이사 : 김슬아
                            <br>입점문의 : <a>입점문의하기</a> | 제휴문의 : <a>business@kurlycorp.com</a>
                            <br>채용문의 : <a>recruit@kurlycorp.com</a>
                            <br>팩스 : 070 - 7500 - 6098
                        </div>
                        <ul>
                            <li><a target="_blank" href="https://www.instagram.com/marketkurly/"><img src="${pageContext.request.contextPath }/images/instagram_logo.png" width="30" height="30"></a></li>
                            <li><a target="_blank" href="https://www.facebook.com/marketkurly"><img src="${pageContext.request.contextPath }/images/facebook_logo.png" width="30" height="30"></a></li>
                            <li><a target="_blank" href="https://blog.naver.com/marketkurly"><img src="${pageContext.request.contextPath }/images/naverblog_logo.png" width="30" height="30"></a></li>
                            <li><a target="_blank" href="https://m.post.naver.com/marketkurly"><img src="${pageContext.request.contextPath }/images/naverpost_logo.png" width="30" height="30"></a></li>
                            <li><a target="_blank" href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" ><img src="${pageContext.request.contextPath }/images/youtube_logo.png" width="30" height="30"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="f_f_2">
                    <button>
                        <img src="https://res.kurly.com/pc/ico/2208/logo_isms.svg">
                        <p>[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br>(심사받지 않은 물리적 인프라 제외)<br>[유효기간] 2022.01.19 ~ 2025.01.18</p>
                    </button>
                    <button>
                        <img src="https://res.kurly.com/pc/ico/2208/logo_privacy.svg">
                        <p>개인정보보호 우수 웹사이트 ·<br>개인정보처리시스템 인증 (ePRIVACY PLUS)</p>
                    </button>
                    <button>
                        <img src="https://res.kurly.com/pc/ico/2208/logo_tosspayments.svg">
                        <p>토스페이먼츠 구매안전(에스크로)<br>서비스를 이용하실 수 있습니다.</p>
                    </button>
                    <button>
                        <img src="https://res.kurly.com/pc/ico/2208/logo_wooriBank.svg">
                        <p>고객님이 현금으로 결제한 금액에 대해 우리은행과<br>채무지급보증 계약을 체결하여 안전거래를 보장하고<br>있습니다.</p>
                    </button>
                </div>
            </div>
            <div class="f_s">
                <p>마켓컬리에서 판매되는 상품 중에는 마켓컬리에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.
                    <br>마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 컬리는 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.
                </p>
                <p>&#169; KURLY CORP. ALL RIGHTS RESERVED</p>
            </div>
        </div>
    </div>
</body>
</html>