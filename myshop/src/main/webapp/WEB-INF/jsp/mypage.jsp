<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식 변환 태그 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
 <meta name="description" content=""/>
 <meta name="author" content=""/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>


 <title>B-Shop</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"/>
 <link href="resource/res/css/custom.css" rel="stylesheet"></link>
<style>

html, body {
		margin: 0;
		padding: 0;
		min-height: 100%; /*자식의 percentage height은 부모의 height을 기준으로 하기에 root인 html부터 차근차근 상속하며 height을 설정해주어야 함.*/
	}
	

wrap{
		display:block;
		margin:0;
		padding:0;
		min-height:100%;
		position:relative;
		width:100%;
	}
/*
#sel_footer {
		position: fixed;
		display:block;
    	text-align:center;
        width:100%;
		height:70px;
		bottom:0;
		background-color:#ff8ff4;
   	}
*/

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
.userMenu {
	list-style-type: none;
}
.ft {
	font-size:1em;
	margin:0px;
}
.name {
	color: #007BFF;
}

/* 페이지 버튼 인터페이스 */
.activePage{		
	color: #000000;					
	border : 1px solid black;
	font-weight:400;
}
.pageMaker_wrap{
	text-align: center;
    margin-top: 10px;
    margin-bottom: 0px;
}
.pageMaker_wrap a{
	color : #ccc;
}

.pageMaker_wrap a:hover{
	color : #000000;
	text-decoration:none;
}

.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.next_btn, .prev_btn {
    border: 1px solid black;
    padding: 0 5px;
    width: 60px;
}
.next_btn a, .prev_btn a {
	decoration:none;
    color: #000000;
}

.activePage{		
	color: #000000;					
	border : 1px solid black;
	font-weight:400;
}

#move {
	color: #000000;	
	text-decoration : none;
}

.divider {
	display: inline;
	border-left: 1px solid rgba(0,0,0,.125);
	position:relative;
  	height: 21px;
  	margin-left: 3px;
  	margin-right: 6px;
}

#price {
	text-align : right;
	margin-right: 70px;
}

	 .dropdown:hover .dropdown-menu {
	    display: block;
	    margin-top: 0;
	}
	.userMenu {
		list-style-type: none;
	}
	.ft {
		font-size:1em;
		margin:0px;
	}
	.br {
		color:#624637;
	}
	
	.sl {
		color:#c0c0c0;
	}
	
	.gd {
		color:#D4AF37;
	}
	
	.pl {
		color:#9ED6C0;
	}
	
	
	.ad {
		color:#007BFF;
	}

	#rfWhy {
		padding: .1rem .1rem;
	}
	
	#C_H {
		background-color: rgba(0,0,0,0);
	}
	
	.cardList {
		text-decoration: none;
		color: #000000;
	}
</style>
 <!-- Bootstrap core CSS -->
 <link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
 <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
 <!-- Custom styles for this template -->
 <link href="resource/res/css/shop-homepage.css" rel="stylesheet"></link>
 <link href="resource/res/css/custom.css" rel="stylesheet"></link>

</head>

<body>

  <!-- Navigation -->
  <%@ include file="menu.jsp"%>
 

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
      <br></br>
        <h1 class="my-4">마이페이지</h1>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
<br></br><br></br><br></br>
        <div class="card mt-4">
          <div class="card-header" id="C_H">
		         ${member.memberName}님은
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
		         입니다.
          </div>
          <div class="card-wrap" style="float: left;">
	          <div class="card-body C_B1" style="float: left; width:50%;">
	          ${member.memberId}&nbsp;&nbsp;<div class="divider"></div>
	          ${member.memberMail}<br/><div style="float: right;"><span class="num"></span></div><br/><hr></hr>
	          보유 금액 <div style="float: right;">${member.money}</div><br></br>
	          보유 포인트 <div style="float: right;">${member.point}</div><br></br>
	          도서 판매 횟수 <div style="float: right;">${member.count}</div><br></br>
	          도서 구매 횟수 <div style="float: right;">${member.buyCount}</div><br></br>
	          </div>
	          
	          <div class="card-body C_B2" style="float: left; width:50%; border-left: 1px solid rgba(0,0,0,.125)">
	          <br/>
				<a href="#" class="cardList cardDisabled">회원 정보 <div style="float: right;">개인정보를 관리하는 공간입니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList card1">판매 도서 <div style="float: right;">판매 중인 도서를 관리할 수 있습니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList card2">구매 도서 <div style="float: right;">구매한 도서를 확인할 수 있습니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList cardDisabled">관심 상품 <div style="float: right;">관심상품의 목록을 보여드립니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList cardDisabled">적립금 <div style="float: right;">상품 구매 시 사용하실 수 있습니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList cardDisabled">예치금 <div style="float: right;">동일하게 사용하실 수 있습니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
				<a href="#" class="cardList cardDisabled">쿠폰 <div style="float: right;">보유하고 계신 쿠폰을 보여드립니다. <i class="fas fa-chevron-right"></i></div></a><br></br>
	          </div>
          </div>
        </div>
        <!-- /.card -->
		
        <div class="card card-outline-secondary my-4 cardA" style ="display:none">
          <div class="card-header" id="C_H">
            판매 도서 현황
          </div>
          <div class="card-body">
            <p></p>
            <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>제목</th>
                        <th>저자</th>
                        <th>가격</th>
                        <th>소개</th>
                        <th>등록 날짜</th>
                        <th>수정 날짜</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="list">
                <c:if test="${list.uploadUser eq member.memberId}">
                    <tr>
                        <td><a class="move" href='<c:out value="${list.bookId}"/>'><c:out value="${list.bookName}"/></a></td>
                        <td><c:out value="${list.author}"/></td>
                        <td><fmt:formatNumber value="${list.bookPrice }" pattern="#,###"/></td>
                        <td><c:out value="${list.bookIntro}"/></td>
                        <td><c:out value="${list.regDate}"/></td>
                        <td><c:out value="${list.updateDate}"/></td>
               			<td>
                			<c:if test="${list.bookStatus == 0}">
                				<span class="bS_0">판매 신청 중</span>
                			</c:if>
                			<c:if test="${list.bookStatus == 1}">
                				<span class="bS_1">판매 중</span>
                			</c:if>
                			<c:if test="${list.bookStatus == 2}">
                				<span class="bS_2">판매 완료</span>
                			</c:if>
   			                <c:if test="${list.bookStatus == 3}">
                				<span class="bS_3">신청 거절<br/>
                				<a id="rfWhy" href="javascript:void(window.open('rfWhy?bookId='+'${list.bookId}', '거절 사유 보기','width=500, height=500'))" 
                				class="btn btn-danger">사유 보기</a></span>
                			</c:if>
               			</td>
                    </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            </div>
            <c:if test="${listCheck == 'empty'}">
            	<div class="empty">
                	판매 중인 도서가 없습니다.
                </div>
            </c:if>
            <br/>
	            <form id="moveForm" action="main" method="get" >
                </form>
          </div>
        </div>
        
        <div class="card card-outline-secondary my-4 cardB" style ="display:none">
          <div class="card-header" id="C_H">
            구매 도서 목록
          </div>
          <div class="card-body">
            <p></p>
            <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>제목</th>
                        <th>저자</th>
                        <th>가격</th>
                        <th>소개</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${buyList}" var="buyList">
                <c:if test="${buyList.buyer eq member.memberId}">
                    <tr>
                        <td><a class="move" href='<c:out value="${buyList.bookId}"/>'><c:out value="${buyList.bookName}"/></a></td>
                        <td><c:out value="${buyList.author}"/></td>
                        <td><fmt:formatNumber value="${buyList.bookPrice }" pattern="#,###"/></td>
                        <td><c:out value="${buyList.bookIntro}"/></td>
                    </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            </div>
            <c:if test="${buyListCheck == 'empty'}">
            	<div class="empty">
                	구매한 도서가 없습니다.
                </div>
            </c:if>
            <br/>
          </div>
        </div>
        
        <div class="" style ="display:show; height:209px;">
          
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
<%@ include file="footer.jsp"%>

   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
   <script src="/resource/res/js/scripts.js"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
   <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
   <script src="/resource/res/assets/demo/datatables-demo.js"></script>

  <script>
	 $(document).ready(function() {
		if(${member.grade eq '1'}) {
			$(".num").text('실버 등급까지 1번 남았습니다.');
		} else if(${member.grade eq '2'}) {
			$(".num").text('골드 등급까지 1번 남았습니다.');
		} else if(${member.grade eq '3'}) {
			$(".num").text('플래티넘 등급까지 1번 남았습니다.');
		} else if(${member.grade eq '4'}) {
			$(".num").text('최고 등급입니다.');
		} else {
			$(".num").text('관리자입니다.');
		}
		
	 });
	 
 	/* 상품 조회 페이지 이동 */
 	$(".move").on("click", function(e){
 		e.preventDefault();
 		let moveForm = $('#moveForm');
 		moveForm.find("input").remove();
 		moveForm.append('<input type="hidden" name="bookId" value="'+$(this).attr('href') + '">');
 		moveForm.attr("action", "/goodsDetail");
 		moveForm.submit();
 	});
	
 	$(".card1").on("click", function(e){
 		
 		$(".cardA").hide();
 		$(".cardB").hide();
 		$(".cardA").show();
 	
 	});
 	
 	$(".card2").on("click", function(e){
 		
 		$(".cardA").hide();
 		$(".cardB").hide();
 		$(".cardB").show();
 	
 	});
 	
 	
  </script>
</body>

</html>
