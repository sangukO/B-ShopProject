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
footer {
		display:block;
    	text-align:center;
        width:100%;
		height:72px;
		bottom:0px;
		position:absolute;
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
	border-left: 1px solid #ccc;
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
	
	.bS_2{
		color:green;
	}
	
	.bS_3{
		color:red;
	}
</style>
 <!-- Bootstrap core CSS -->
 <link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>

 <!-- Custom styles for this template -->
 <link href="resource/res/css/shop-homepage.css" rel="stylesheet"></link>
 <link href="resource/res/css/custom.css" rel="stylesheet"></link>
 <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>

</head>

<body>

  <!-- Navigation -->
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

        <div class="card mt-4">
          <div id = "image">
		    <c:if test="${goodsInfo.fileName == null}">
		      <div id="div_wrap" style="position: relative;">
		        <img class="card-img-top img-fluid" id = "image" src="/display?fileName=temp/grey.png" style="height:400px;" alt=""/>
		        <div id="div_text" style="position: absolute; text-align: center; color:white; top: 50%; left: 50%; transform: translate(-50%, -50%);"><span><h3>이미지가 없는 상품입니다.</h3></span></div>
		      </div>
		    </c:if>
		    <c:if test="${goodsInfo.fileName != null}">
		      <img class="card-img-top img-fluid" id = "image" src="/display?fileName=${goodsInfo.uploadPath }/${goodsInfo.fileName }" style="height:400px;" alt=""/>
		    </c:if>
          </div>
          <div class="card-body">
            <h3 class="card-title" style="display:inline"><c:out value="${goodsInfo.bookName }"/></h3>&nbsp;&nbsp;&nbsp;<c:out value="${goodsCate.cateName }"/>
			<c:if test="${goodsInfo.bookStatus == 2}">
				<hr></hr>
            	<h4><span class="bS_2">판매 완료된 상품입니다!</span></h4>
            </c:if>
            <c:if test="${goodsInfo.bookStatus == 3}">
				<hr></hr>
            	<h4><span class="bS_3">판매 거절된 상품입니다!</span></h4>
            </c:if>
            <hr></hr>
			<div class="title-sub">

				저자 <c:out value="${goodsInfo.author }"/> <div class="divider"></div>
				출판사 <c:out value="${goodsInfo.publisher }"/> <div class="divider"></div>
				출간일 <c:out value="${goodsInfo.publeYear }"/> <div class="divider"></div>
				상품등록일 <c:out value="${goodsInfo.regDate }"/>
			
			</div>
            <div id = "price"><h4><fmt:formatNumber value="${goodsInfo.bookPrice }" pattern="#,###"/>원</h4></div>
            <br/>
            <p class="card-text">
            <c:out value="${goodsInfo.bookIntro }"/></p>
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            판매자 <c:out value="${goodsInfo.uploadUser }"/>의 설명
          </div>
          <div class="card-body">
            <p><textarea name="bookContents" id="bookContents_textarea"><c:out value="${goodsInfo.bookContents }"/></textarea>			
            <br/>
            <!-- <small class="text-muted">Explain by <c:out value="${goodsInfo.uploadUser }"/> on <c:out value="${goodsInfo.updateDate }"/></small> -->
            <hr>
			<div class="btn_section">
	            <c:if test = "${member.memberId != goodsInfo.uploadUser}">
	            	<c:choose>
	            		<c:when test="${goodsInfo.bookStatus == 2}">
	            			<a id="purchaseBtn" class="btn btn-secondary disabled">판매 완료</a>
	            		</c:when>
	            		<c:when test="${goodsInfo.bookStatus == 0}">
	            			<a id="passBtn" class="btn passBtn btn-primary">상품 승인</a>
	            			<a id="refuseBtn" class="btn refuseBtn btn-danger">상품 거절</a>
            			</c:when>
            			<c:when test="${goodsInfo.bookStatus == 3}">
	            			<a id="passBtn" class="btn passBtn btn-primary">상품 승인</a>
            			</c:when>
            		    <c:otherwise>
					        <a id="purchaseBtn" class="btn btn-primary">구매 신청</a>
					    </c:otherwise>
	            	</c:choose>
	            <c:if test = "${member.grade == 5}">
	            <a id="modifyBtn" class="btn btn-success">상품 수정</a>
	            <a id="deleteBtn" class="btn btn-secondary">상품 삭제</a>
	            </c:if>
	            <a id="cancelBtn" class="btn btn-primary float-right">상품 목록</a>
	            </c:if>
	            <c:if test = "${member.memberId == goodsInfo.uploadUser}">
	            <c:if test = "${member.grade == 5}">
	            <c:if test="${goodsInfo.bookStatus == 3}">
	            <a id="passBtn" class="btn passBtn btn-primary">상품 승인</a>
	            <a id="refuseBtn" class="btn refuseBtn btn-danger">상품 거절</a>
            	</c:if>
            	</c:if>
	            <a id="modifyBtn" class="btn btn-success">상품 수정</a>
	            <a id="deleteBtn" class="btn btn-secondary">상품 삭제</a>
	            <a id="cancelBtn" class="btn btn-primary float-right">상품 목록</a>
	            </c:if>
	            <form id="moveForm" action="main" method="get" >
 					<input type="hidden" name="pageNum" value="${cri.pageNum}"/>
					<input type="hidden" name="amount" value="${cri.amount}"/>
					<input type="hidden" name="keyword" value="${cri.keyword}"/>
                </form>
            </div>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
<%@ include file="footer.jsp"%>

  <script>
  
	 $(document).ready(function(){
		ClassicEditor
		.create(document.querySelector('#bookContents_textarea'))
		.then(editor => {
			editor.isReadOnly = true;
		})
		.catch(error=>{
		});
		
		var ref = document.referrer;
		if(ref === 'http://localhost:8080/admin/adminCharts') {
			$("#cancelBtn").text('관리페이지');
		}

	 });
  
	/* 구매 */
	$("#purchaseBtn").on("click", function(e){
			//가맹점 식별코드
			IMP.init('imp98324661');
			
			IMP.request_pay({
			    pg : 'kakaopay',
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '${goodsInfo.bookName }' , //결제창에서 보여질 이름
			    amount : '${goodsInfo.bookPrice }' , //실제 결제되는 가격
			    buyer_email : '${member.memberMail }',
			    buyer_name : '${member.memberName }',
			    buyer_tel : '010-1234-5678'
			}, function(rsp) {
				console.log(rsp);
			    if ( rsp.success ) {
			    	var msg = '결제가 완료되었습니다.';
			    	alert(msg);
			    	let moveForm = $("#moveForm");
			    	moveForm.find("input").remove();
					moveForm.append('<input type="hidden" name="bookId" value="${goodsInfo.bookId}">');
					moveForm.append('<input type="hidden" name="uploadUser" value="${goodsInfo.uploadUser}">');
					moveForm.append('<input type="hidden" name="memberId" value="${member.memberId}">');
					moveForm.attr("action", "/goodsPurchase");
					moveForm.attr("method", "post");
					moveForm.submit();
			    } else {
			    	 var msg = '결제에 실패하였습니다.';
			    	 msg += '\n';
			         msg += '에러내용 : ' + rsp.error_msg + '.';
			         alert(msg);
			    }
			});
	});	
	 
	/* 목록 이동 버튼 */
	$("#cancelBtn").on("click", function(e){
		var ref = document.referrer;
		if(ref === 'http://localhost:8080/admin/adminTable' || ref === 'http://localhost:8080/admin/adminCharts') {
			history.back();
		} else {
			e.preventDefault();
			$("#moveForm").submit();	
		}
	});
	
	/* 수정 페이지 이동 */
	$("#modifyBtn").on("click", function(e){
		e.preventDefault();
		let addInput = '<input type="hidden" name="bookId" value="${goodsInfo.bookId}">';
		$("#moveForm").append(addInput);
		$("#moveForm").attr("action", "/goodsModify");
		$("#moveForm").submit();
	});	
	
	/* 삭제 버튼 */
	$("#deleteBtn").on("click", function(e){
		e.preventDefault();
		let moveForm = $("#moveForm");
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="bookId" value="${goodsInfo.bookId}">');
		moveForm.attr("action", "/goodsDelete.do");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	/* 상품 승인 */
	$(".passBtn").on("click", function(e){
		e.preventDefault();
		let moveForm = $('#moveForm');
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="bookId" value="${goodsInfo.bookId}">');
		moveForm.attr("action", "/admin/goodsPass2");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	/* 상품 거절 */
	$(".refuseBtn").on("click", function(e){
		e.preventDefault();
		let moveForm = $('#moveForm');
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="bookId" value="${goodsInfo.bookId}">');
		moveForm.attr("action", "/admin/goodsRefuse2");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	

  </script>
</body>

</html>
