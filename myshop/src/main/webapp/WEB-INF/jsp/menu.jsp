<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식 변환 태그 -->
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/main">B-Shop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <!-- 로그인한 상태 -->
          <c:if test="${ member != null }">
          	<c:if test="${ member.grade == 5 }">
            	<li class="nav-item">
            		<a class="nav-link" href="/admin/manage">관리</a>
          		</li>    
          	</c:if>
          </c:if>
   		  <!-- 로그인 하지 않은 상태 -->
          <c:if test = "${member == null }">
          <li class="nav-item">
            <a class="nav-link" href="/member/login">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/member/join">회원가입</a>
          </li>
          </c:if>
          <c:if test="${ member != null }">
          <li class="nav-item">
            <a class="nav-link" href="/goodsEnroll">판매</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="idMypage" href="/mypage">마이페이지</a>
            <form id="moveMypage" action="/mypage" method="get" >
				<input type="hidden" name="${member.memberId }" value="${member.memberId }"></input>
			</form>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">장바구니</a>
          </li>
          </c:if>
          <!-- 로그인한 상태 -->
          <c:if test="${ member != null }">
          	
          <li class="nav-item dropdown">
          	 <!-- 드롭다운 메뉴 -->
	         <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
	         회원 정보
	         </a>
	         <div class="dropdown-menu">
			    &nbsp;&nbsp;&nbsp;&nbsp;<span>${member.memberId}</span>
			    <c:choose>
			    <c:when test="${member.grade eq '1'}">
          			<span class="br">bronze</span>
          		</c:when>
          		<c:when test="${member.grade eq '2'}">
          			<span class="sl">silver</span>
          		</c:when>
          		<c:when test="${member.grade eq '3'}">
          			<span class="gd">gold</span>
          		</c:when>
          		<c:when test="${member.grade eq '4'}">
          			<span class="pl">platinum</span>
          		</c:when>
          		<c:when test="${member.grade eq '5'}">
          			<span class="ad">관리자</span>
          		</c:when>
          		</c:choose>
				<p class="ft">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${member.money }" pattern="#,###"/>₩</p>
				<p class="ft">&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${member.point }" pattern="#,###"/>P</p>
				<div class="dropdown-divider"></div>
				&nbsp;&nbsp;&nbsp;&nbsp;<span><a class="userLink" href="/member/logout.do">로그아웃</a></span>
	         </div>
          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  
  <script>
	/* 마이페이지 이동 버튼 */
	$("#idMypage").on("click", function(e){
		
		e.preventDefault();
		moveForm.attr("action", "/mypage");
		moveForm.submit();
		
	});
  </script>