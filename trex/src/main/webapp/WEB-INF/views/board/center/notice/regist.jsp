<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- subvisual -->
<div id="subvisual">
	<div class="subv_performance">
		<div class="subv_pat">
			<p>
				<strong><img
					src="<%=request.getContextPath()%>/resources/images/ma_service_type.png"
					alt="Daejeon Arts Center"></strong> 문화로 시민을 행복하게! 대전예술의전당
			</p>
		</div>
	</div>
</div>
<!-- //subvisual -->

<!-- navigation -->
<div id="navigation">
	<div class="naviwrap">
		<a href="<%=request.getContextPath()%>/" class="nv_home">HOME</a>&gt;
		<navi> <a
			href="<%=request.getContextPath()%>/board/center/main">고객센터</a>&gt;
		<a href="<%=request.getContextPath()%>/board/center/notice/list">공지사항</a>
		</navi>
	</div>
	<!-- //navigation -->

	<!-- container -->
	<div id="container">
		<%@ include file="/WEB-INF/views/board/center/submenu.jsp"%>

		<!-- content-->
		<div id="content">
			<!-- 컨텐츠 타이틀 -->
			<h3 class="cnt_ti">공지사항 등록</h3>

			<div id="txt">

				<form name="inputFrm" method="post" action="regist">
					<ul class="board_writeInfo">

						<!--제목-->
						<li><label for="wrtTitle">제 목</label><input type="text"
							id="wrtTitle" name="title" value=""></li>

						<!--작성자 -->
						<li><label for="wrtPers">작성자</label><input type="text"
							id="wrtPers" name="writer" value="${loginUser.mem_code }"
							readonly=""><span class="tip">* 작성자는 필수입력 사항입니다.</span></li>

						<!--내용입력-->
						<li><label for="wrtCont">내용입력</label> <textarea id="wrtCont"
								name="cont" rows="20" cols="1"></textarea></li>
					</ul>

					<!-- 게시판 버튼모음 -->
					<div class="board_butt">
						<input type="image"
							src="<%=request.getContextPath()%>/resources/images/regist.png"
							onclick="goSubmit('post','');" alt="등록"> <a href="./list"><img
							src="<%=request.getContextPath()%>/resources/images/cancel.png"
							alt="취소"></a>

					</div>



				</form>
				<!--  웹필터 수정 -->
				<!--  웹필터 수정 -->
			</div>

		</div>
		<!--quick  -->
		<%@ include file="/WEB-INF/views/board/center/quick.jsp"%>

	</div>
	<!-- //container -->
</div>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/board.css"
	type="text/css" media="all">


<%@ include file="./regist_file.jsp"%>

<%@ include file="./regist_js.jsp"%>