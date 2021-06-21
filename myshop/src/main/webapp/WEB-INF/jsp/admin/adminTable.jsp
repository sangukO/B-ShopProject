<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식 변환 태그 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> <!-- 글자수 구하기 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>B-Shop</title>
        <style>

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
.userMenu {
	list-style-type: none;
}
a:link {
	text-decoration: none;
}
.ft {
	font-size:1em;
	margin:0px;
}

/* 등록 화면 메인 영역 */

.form_section{
	width: 70%;
    margin-left: 2%;
    margin-top: 20px;
    border: 1px solid #dbdde2;
    background-color: #efefef;	
}
.form_section_title{
	padding: 20px 35px;	
}
.form_section_title label{
	display: block;
    font-size: 20px;
    font-weight: 800;
}
.title {
	font-size: 2.5em;
    font-weight: 800;
}
.form_section_content{
	padding: 20px 35px;
    border-top: 1px solid #dbdde2;	
}
.form_section_content input{
	width: 98%;
    height: 30px;
    font-size: 15px;
    padding: 5px 1%;
}
.form_section_content select {		/* 카테고리 css 설정 */
    width: 92%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
    margin-left: 5px;
    float:right;
}
.cate_wrap span {
    font-weight: 600;
}
.cate_wrap:not(:first-child) {
    margin-top: 20px;
    margin-bottom: 20px;
}
/* 버튼 영역 */

.btn_section{
	text-align: center;
	margin: 80px 0;
}
.btn{
	border: 1px solid #212529;
    min-width: 180px;
    padding: 4px 30px;
    font-size: 25px;
    font-weight: 600;
    line-height: 40px;
    
}
#enroll_Btn{
	background-color: #545454;
	margin-left:15px;
}

.btn:hover {
    background-color: #343a40;
}
#enrollBtn:hover {
	color: #ffffff;
}
#cancelBtn:hover {
	color: #ffffff;
}
.ck-content {
	height: 170px;
}
.ui-datepicker-trigger {						/* 캘린더 css 설정 */
    margin-left: 20px;
    width: 14%;
    height: 38px;
    font-weight: 600;
    background-color: #343a40;
    font-size: 15px;
    color: #ffffff;
    cursor:pointer;
}
input[name='publeYear'] {
    width: 80%;
    text-align: center;
}


.ck_warn{						/* 입력란 공란 경고 태그 */
	display: none;
    padding-top: 10px;
    text-align: center;
    color: #e05757;
    font-weight: 300;    
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
	
	.bS_0 {
		color:black;
	}
	
	.bS_1 {
		color:blue;
	}
	
	.bS_2 {
		color:green;
	}
	
	.bS_3 {
		color:red;
	}
	
	
</style>
        <link href="/resource/res/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	    <!-- Bootstrap core CSS -->
		<link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
		
		<!-- Custom styles for this template -->
		<link href="resource/res/css/shop-homepage.css" rel="stylesheet"></link>
		<link href="/resource/res/css/custom.css" rel="stylesheet"></link>
</head>
    <body class="sb-nav-fixed">
	<%@ include file="adminMenu.jsp"%>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="/admin/manage">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">상품 관리</div>
                            <a class="nav-link" href="/admin/adminTable">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                전체 상품 관리
                            </a>
                            <a class="nav-link" href="/admin/adminCharts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                판매 신청 상품 관리
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">전체 상품 관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="manage">Dashboard</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                                <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                                .
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                DataTable
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>bookId</th>
                                                <th>bookName</th>
                                                <th>bookIntro</th>
                                                <th>uploadUser</th>
                                                <th>regDate</th>
                                                <th>bookPrice</th>
                                                <th>bookStatus</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${list}" var="list">
                                            <tr>
                                                <td><c:out value="${list.bookId}"/></td>
                                                <td><a class="move" href='<c:out value="${list.bookId}"/>'><c:out value="${list.bookName}"/></a></td>
                                                <td><c:out value="${list.bookIntro}"/></td>
                                                <td><c:out value="${list.uploadUser}"/></td>
                                                <td><c:out value="${list.regDate}"/></td>
                                                <td><fmt:formatNumber value="${list.bookPrice }" pattern="#,###"/>원</td>
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
                                        				<span class="bS_3">신청 거절</span>
                                        			</c:if>
                                       			</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                        <form id="moveForm" action="../main" method="get" >

              							</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
<%@ include file="../footer.jsp"%>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resource/res/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/resource/res/assets/demo/datatables-demo.js"></script>
        
        <script>
        
        let moveForm = $('#moveForm');
        
    	/* 상품 조회 페이지 이동 */
    	$(".move").on("click", function(e){
    		
    		e.preventDefault();
    		moveForm.append("<input type='hidden' name='bookId' value='"+$(this).attr("href") + "'>");
    		moveForm.attr("action", "../goodsDetail");
    		moveForm.submit();

    	});
    	
        </script>
    </body>
</html>