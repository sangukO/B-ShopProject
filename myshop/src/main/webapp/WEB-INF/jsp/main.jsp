<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식 변환 태그 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> <!-- 글자수 구하기 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
 <meta name="description" content=""/>
 <meta name="author" content=""/>
	
 <title>B-Shop</title>

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
		min-height:100%; /*푸터를 위해*/
		position:relative; /*푸터를 위해*/
		width:100%;
	}
/*
#sel_footer {
		position: fixed;
		display:block;
    	text-align:center;
        width:100%;
		height:50px;
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

.move {
	color: #000000;	
	text-decoration : none;
}
.move:link {
	color: #000000;	
	text-decoration : none;
}

#dropdownCate {
	width:108.06px;
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

.card-text {
	display: inline-block;
	width:213px;
	height:48px;
	overflow: hidden;
	text-overflow: ellipsis;
}

.bS_2 {
	color:green;
}

.cb {
	height:188px;
}

#div_img {
	filter: brightness(50%);
}

</style>

	<!-- Bootstrap core CSS -->
	<link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
	
	 <!-- Custom styles for this template -->
	<link href="resource/res/css/shop-homepage.css" rel="stylesheet"></link>
	<link href="resource/res/css/custom.css" rel="stylesheet"></link>

</head>

<body>
<wrap>
<%@ include file="menu.jsp"%>


  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">B-Shop</h1>
		<div class="container"> 
		      <div class="dropdown" id="dropdownCate"> 
		      <button  class="btn  btn-secondary dropdown-toggle"  data-toggle="dropdown"> 
		      	카테고리 	
		      </button> 
			  <div class="dropdown-menu">
			      <h5 class="dropdown-header">국내 도서</h5> 
			      <a class="dropdown-item" href="#">소설</a> 
			      <a class="dropdown-item" href="#">시/에세이</a> 
			      <a class="dropdown-item" href="#">경제/경영</a>
			      <a class="dropdown-item" href="#">자기계발</a> 		
			      <a class="dropdown-item" href="#">인문</a> 		
			      <a class="dropdown-item" href="#">역사/문화</a> 		                           
			      <a class="dropdown-item" href="#">과학</a> 		
			      <h5 class="dropdown-header">외국 도서</h5> 		
			      <a class="dropdown-item" href="#">문학</a> 		                           
			      <a class="dropdown-item" href="#">인문/사회</a> 		
			      <a class="dropdown-item" href="#">경제/경영</a> 		                           
			      <a class="dropdown-item" href="#">과학/기술</a> 		
		      </div> 
		   </div> 
		</div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
		
        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
	            <div id="div_wrap" style="position: relative; background-color:black;">
	              <img id="div_img" class="d-block img-fluid img1" src="resource/res/image/banner1.jpg" 
	              style="width:900px; height:320.83px;" alt="First slide"></img>
	              <div id="div_text" style="position: absolute; text-align: center; color:#dee2e6; top: 50%; left: 50%; transform: translate(-50%, -50%);"><span><h1>환영합니다.<br/>도서 쇼핑몰입니다.</h1></span></div>
	            </div>
            </div>
            <div class="carousel-item">
            	<div id="div_wrap" style="position: relative; background-color:black;">
	              <img id="div_img" class="d-block img-fluid img1" src="resource/res/image/banner2.jpg" 
	              style="width:900px; height:320.83px;" alt="Second slide"></img>
	              <div id="div_text" style="position: absolute; text-align: center; color:#dee2e6; top: 50%; left: 50%; transform: translate(-50%, -50%);"><span><h2>여름맞이 신규 가입자</br>3000 포인트 증정 이벤트</h2></span></div>
	            </div>
            </div>
            <div class="carousel-item">
            	<div id="div_wrap" style="position: relative; background-color:black;">
	              <img id="div_img" class="d-block img-fluid img1" src="resource/res/image/banner3.jpg" 
	              style="width:900px; height:320.83px;" alt="Third slide"></img>
	              <div id="div_text" style="position: absolute; text-align: center; color:#dee2e6; top: 50%; left: 50%; transform: translate(-50%, -50%);"><span><h2>이달의 우수 판매자</br>보러가기</h2></span></div>
	            </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="row">
                	<!-- 상품 리스트 O -->
					<c:if test="${listcheck != 'empty'}">
						<c:forEach items="${list}" var="list">
				          <div class="col-lg-4 col-md-6 mb-4">
				            <div class="card h-100">
				            	<a class="move" href='<c:out value="${list.bookId}"/>'>
					            	<div class="fileImage">
					            		<c:if test="${list.fileName == null}">
					            			<div id="div_wrap" style="position: relative;">
					            			<img class="card-img-top" id="image" src="/display?fileName=temp/grey.png" style="width:252.98px; height:150px;" alt=""/>
					            			<div id="div_text" style="position: absolute; text-align: center; color:white; top: 50%; left: 50%; transform: translate(-50%, -50%);"><span>이미지가 없는 상품입니다.</span></div>
						            		</div>
					            		</c:if>
					            		<c:if test="${list.fileName != null}">
					              			<img class="card-img-top" id="image" src="/display?fileName=${list.uploadPath }/${list.fileName }" style="width:252.98px; height:150px;" alt=""/>
						            	</c:if>
						            </div>	
					              	<div class="card-body cb">	
					                	<h4 class="card-title">
											<c:out value="${list.bookName}"></c:out>	
					                	</h4>
					                	<h5><fmt:formatNumber value="${list.bookPrice }" pattern="#,###"/>원</h5>
						                <p class="card-text">	
						                <c:if test="${list.bookStatus == 1}">
						                	<c:out value="${list.bookIntro}" />
						                </c:if>		                
						                <c:if test="${list.bookStatus == 2}">
						                	<span class="bS_2">판매 완료</span>
						                </c:if>	
						                </p>
					              	</div>
					              	<div class="card-footer">
					                	<small class="text-muted"><c:out value="${list.uploadUser }" /></small>
					              	</div>
				              	</a>
				            </div>
				          </div>
						</c:forEach>
					</c:if>
					<!-- 상품 리스트 X -->
                	<c:if test="${listCheck == 'empty'}">
                		<div class="table_empty">
                			등록된 도서가 없습니다.
                		</div>
                	</c:if>
        </div>
        <!-- /.row -->
        <div class="page">
			<c:if test="${listcheck != 'empty'}">
              	<!-- 페이지 이름 인터페이스 영역 -->
              	<div class="pageMaker_wrap">
              		<ul class="pageMaker">
              			
              			<!-- 이전 버튼 -->
              			<c:if test="${pageMaker.prev }">
              				<li class="btnA pageMaker_btn prev_btn">
              					<a id = "btnAtag" href="${pageMaker.pageStart -1}">이전</a>
              				</li>
              			</c:if>
              			
              			<!-- 페이지 번호 -->
              			<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
              				<li id = activePage class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'activePage':''}">
              					<c:if test="${num != 0 }">
              					<a class="num" id = "btnAtag" href="${num}">${num}</a>
              					</c:if>
              				</li>	
              			</c:forEach>
              		
                   	<!-- 다음 버튼 -->
                   	<c:if test="${pageMaker.next}">
                   		<li class="btnA pageMaker_btn next_btn">
                   			<a id = "btnAtag" href="${pageMaker.pageEnd + 1 }">다음</a>
                   		</li>
                   	</c:if>
                   </ul>
              	</div>
              	
              	<form id="moveForm" action="/main" method="get" >
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"></input>
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}"></input>
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}"></input>
              	</form>
			</c:if>
			<br>
		</div>
      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->
    
    </wrap>

  </div>
  <!-- /.container -->

  <!-- Footer -->
<%@ include file="footer.jsp"%>

  <!-- Bootstrap core JavaScript -->
  <script src="resource/res/vendor/jquery/jquery.min.js"></script>
  <script src="resource/res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>


	/* 페이지 이동 */
	
	let moveForm = $('#moveForm');

	/* 페이지 이동 버튼 */
	$(".pageMaker_btn a").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		moveForm.submit();
		
	});
	
	/* 상품 조회 페이지 이동 */
	$(".move").on("click", function(e){
		
		e.preventDefault();
		moveForm.append("<input type='hidden' name='bookId' value='"+$(this).attr("href") + "'>");
		moveForm.attr("action", "/goodsDetail");
		moveForm.submit();
		
		
	});
</script>

</body>

</html>
