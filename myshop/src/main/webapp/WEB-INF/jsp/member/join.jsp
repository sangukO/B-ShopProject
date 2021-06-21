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
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.1/css/all.css"/>
 
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

	.input-group {
		height:38px;
	}
	
	/* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
	
	/* 유효성 검사 문구 */
	.final_id_ck{
	    display: none;
	}
	.final_pw_ck{
	    display: none;
	}
	.final_pwck_ck{
	    display: none;
	}
	.final_name_ck{
		color: red;
	    display: none;
	}
	.final_mail_ck{
		color: red;
	    display: none;
	}
	
	/* 비밀번호 확인 일치 유효성검사 */
	.pwck_input_re_1{
	        color : green;
	        display : none;    
	}
	.pwck_input_re_2{
	        color : red;
	        display : none;    
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
	<p class="text-success text-center">회원가입을 진행합니다.</p>
	<form id="join_form" method="post">
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-user fa-fw"></i> </span>
				 </div>
				<input id="memberId" name="memberId" class="form-control" placeholder="ID" type="text"></input>
			</div> <!-- input-group.// -->
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span>
		</div> <!-- form-group// -->
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock fa-fw"></i> </span>
				 </div>
			    <input class="form-control" id="memberPw" name="memberPw" placeholder="PW" type="password"></input>
			    <input class="form-control" id="memberPw2" name="memberPw2" placeholder="PW Confirm" type="password"></input>
			</div> <!-- input-group.// -->
			<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
			<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
			<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
            <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
		</div> <!-- form-group// -->
		
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fas fa-signature fa-fw"></i> </span>
				</div>
				<input name="memberName" class="form-control" id="memberName" placeholder="Name" type="text"></input>
			</div> <!-- input-group.// -->
			<span class="final_name_ck">이름을 입력해주세요.</span>
		</div> <!-- form-group// -->
		
		<div class="form-group">
			<div class="input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fas fa-at fa-fw"></i> </span>
				 </div>
				<input name="memberMail" id="memberMail" class="form-control" placeholder="Email" type="text"></input>
			</div> <!-- input-group.// -->
			<span class="final_mail_ck">이메일을 입력해주세요.</span>
		</div> <!-- form-group// -->
		
		<div class="form-group">
		<input type="button" id="join_button" class="btn btn-primary btn-block" value="회원가입"></input>
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

/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;          // 아이디 중복 검사
var pwCheck = false;            // 비밀번호
var pwckCheck = false;          // 비밀번호 확인
var pwckcorCheck = false;       // 비밀번호 확인 일치 확인
var nameCheck = false;          // 이름
var mailCheck = false;          // 이메일

$(document).ready(function(){
    //회원가입 버튼(회원가입 기능 작동)
    $("#join_button").click(function(){
        
        /* 입력값 변수 */
        var id = $('#memberId').val();                 // id 입력란
        var pw = $('#memberPw').val();                // 비밀번호 입력란
        var pwck = $('#memberPw2').val();            // 비밀번호 확인 입력란
        var name = $('#memberName').val();            // 이름 입력란
        var mail = $('#memberMail').val();            // 이메일 입력란
        
        /* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        
        /* 비밀번호 유효성 검사 */
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
        }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
        
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        
        /* 이메일 유효성 검사 */
        if(mail == ""){
            $('.final_mail_ck').css('display','block');
            mailCheck = false;
        }else{
            $('.final_mail_ck').css('display', 'none');
            mailCheck = true;
        }
        
        /* 최종 유효성 검사 */
       if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck){
           $("#join_form").attr("action", "/member/join");
           $("#join_form").submit();
           return false;
       }

    });
});

//아이디 중복검사
$('#memberId').on("propertychange change keyup paste input", function(){

	var memberId = $('#memberId').val();			// .id_input에 입력되는 값
	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			// console.log("성공 여부" + result);
			if(result != 'fail'){
				$('.id_input_re_1').css("display","inline-block");
				$('.id_input_re_2').css("display", "none");		
				idckCheck = true;
			} else {
				$('.id_input_re_2').css("display","inline-block");
				$('.id_input_re_1').css("display", "none");	
				idckCheck = false;
			}
		}// success 종료
	}); // ajax 종료

});// function 종료

/* 비밀번호 확인 일치 유효성 검사 */

$('#memberPw2').on("propertychange change keyup paste input", function(){
        
    var pw = $('#memberPw').val();
    var pwck = $('#memberPw2').val();
    $('.final_pwck_ck').css('display', 'none');
    
    if(pw == pwck){
        $('.pwck_input_re_1').css('display','block');
        $('.pwck_input_re_2').css('display','none');
        pwckcorCheck = true;
    }else{
        $('.pwck_input_re_1').css('display','none');
        $('.pwck_input_re_2').css('display','block');
        pwckcorCheck = false;
    }    
});
</script>

</body>

</html>
