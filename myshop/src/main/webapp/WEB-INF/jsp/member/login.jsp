<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
 <meta name="description" content=""/>
 <meta name="author" content=""/>
	
 <title>B-Shop</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"/>
 
 <!-- Bootstrap core CSS -->
 <link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

 <!-- Custom styles for this template -->
 <link href="/resource/res/css/shop-homepage.css" rel="stylesheet"/>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <link href="/resource/res/css/custom.css" rel="stylesheet"></link>
 <style>
	html, body {
			margin: 0;
			padding: 0;
			height: 100%; /*자식의 percentage height은 부모의 height을 기준으로 하기에 root인 html부터 차근차근 상속하며 height을 설정해주어야 함.*/
		}
	wrap{
			display:block;
			margin:0;
			padding:0;
			min-height:100%; /*푸터를 위해*/
			position:relative; /*푸터를 위해*/
			width:100%;
		}
	footer {
			display:block;
	    	text-align:center;
	        width:100%;
			height:72px;
			bottom:0px;
			position:absolute;
			background-color:#ff8ff4;
    	}

	/* 로그인 실패시 경고글 */
	.login_warn{
	    margin-top: 30px;
	    text-size: 
	    text-align: center;
	    color : red;
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
 </style>
 
 <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
</head>

<body>
<wrap>
<%@ include file="../menu.jsp"%>
  <!-- Page Content -->
<div class="container" align="center">
<br>  <p class="text-center">More bootstrap 4 components on <a href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com</a></p>
    <br><br>
	<aside class="col-sm-4" align="center">

<div class="card">
<article class="card-body">
	<h4 class="card-title text-center mb-4 mt-1">B-Shop</h4>
	<hr>
	<p class="text-success text-center">로그인을 진행합니다.</p>
	<form id="login_form" method="post">
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-user fa-fw"></i> </span>
				 </div>
				<input id="memberId" name="memberId" class="form-control" placeholder="ID" type="text"></input>
			</div> <!-- input-group.// -->
			<div class="check_font" id="id_check"></div>
			</div> <!-- form-group// -->
			
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock fa-fw"></i> </span>
				 </div>
			    <input class="form-control" id="memberPw" name="memberPw" placeholder="PW" type="password"></input>
			    <div class="check_font" id="pw_check"></div>
			</div> <!-- input-group.// -->
		<c:if test = "${result == 0 }">
            <div class = "login_warn">사용자 정보를 잘못 입력하셨습니다.</div>
        </c:if>
		</div> <!-- form-group// -->

		<div class="form-group">
		<input type="button" id="login_button" class="btn btn-primary btn-block" value="로그인"></input>
		</div> <!-- form-group// -->
	</form>
</article>
</div> <!-- card.// -->
<br><br>
	</aside> <!-- col.// -->
</div> <!-- row.// -->
</wrap>


  <!-- Footer -->
<%@ include file="../footer.jsp"%>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
  <script>
 

    /* 로그인 버튼 클릭 메서드 */
    $("#login_button").click(function(){
        
        /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
        
    });
    /* 엔터키 로그인 요청 메서드 */
    $(document).ready(function() {
        $("#memberPw").keydown(function(key) {
            if (key.keyCode == 13) {
            	
                /* 로그인 메서드 서버 요청 */
                $("#login_form").attr("action", "/member/login");
                $("#login_form").submit();
            }
        });
    });
 
</script>
</body>

</html>
