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
.form_section_content select{
	width: 98%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
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

.form_section_content select {		/* 카테고리 css 설정 */
    width: 92%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
    margin-left: 5px;
}
.cate_wrap span {
    font-weight: 600;
}
.cate_wrap:not(:first-child) {
    margin-top: 20px;
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
	
		#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
</style>

 <!-- Bootstrap core CSS -->
 <link href="resource/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>

 <!-- Custom styles for this template -->
 <link href="resource/res/css/shop-homepage.css" rel="stylesheet"></link>
 <link href="resource/res/css/custom.css" rel="stylesheet"></link>
</head>

<body>

  <!-- Navigation -->
<%@ include file="menu.jsp"%>

  <!-- Page Content -->
  <div class="container">
<br></br>
                     <div class="reg_main">
		      			<div class="title">
		      				&nbsp;&nbsp;&nbsp;<label>도서 수정</label>
		      			</div>
		      			<div class="form_wrap">
                    	<form action="/goodsmodify" method="post" id="modifyForm" enctype="multipart/form-data">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 제목</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="bookName" value="${goodsInfo.bookName}">
                    				<span class="ck_warn bookName_warn">책 이름을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>작가</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="author" value="${goodsInfo.author}">
                    				<span class="ck_warn author_warn">작가를 입력해주세요</span>
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>출판일</label>	
                    			</div>
                    			<div class="form_section_content">
                    				<input name="publeYear" autocomplete="off" readonly="readonly">
                    				<span class="ck_warn publeYear_warn">출판일을 선택해주세요.</span>
                    			</div>
                    		</div>            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>출판사</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="publisher" value="${goodsInfo.publisher}">
                    				<span class="ck_warn publisher_warn">출판사를 입력해주세요.</span>
                    			</div>
                    		</div>             
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 카테고리</label>
                    			</div>
                    			<div class="form_section_content">
                    				<!-- <input name="cateCode"> -->
									<div class="cate_wrap">
										<span>대분류</span>
										<select class="cate1">
											<option selected value="none">선택</option>
										</select>
									</div>
									<div class="cate_wrap">
										<span>중분류</span>
										<select class="cate2">
											<option selected value="none">선택</option>
										</select>
									</div>
									<div class="cate_wrap">
										<span>소분류</span>
										<select class="cate3" name="cateCode">
											<option selected value="none">선택</option>
										</select>
									</div> 
									<span class="ck_warn cateCode_warn">카테고리를 선택해주세요.</span> 
                    			</div>
                    		</div>          
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				 <input name="bookPrice" value="${goodsInfo.bookPrice}"/>
                    				 <!-- <span class="ck_warn bookPriceZero_warn">가격을 입력해주세요.</span> -->
                    				 <span class="ck_warn bookPrice_warn">올바른 가격을 입력해주세요.</span>
                    			</div>
                    		</div>          		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 상태</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="bookIntro" value="${goodsInfo.bookIntro}"></input>
                    				<span class="ck_warn bookIntro_warn">책 상태를 입력해주세요.</span>
                    			</div>
                    		</div>        		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>책 설명</label>
                    			</div>
                    			<div class="form_section_content" id="book_contents">
                    				<textarea name="bookContents" id="bookContents_textarea">${goodsInfo.bookContents}</textarea>
                    				<span class="ck_warn bookContents_warn">책 설명을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>이미지</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input type="file" id="fileItem" class="form-control-file" name="bookImage" style="height: 30px;">
                    				<div id="uploadResult">
										
									</div>
                    			</div>
                    		</div>
                    			
	                    	<input type="hidden" name='bookId' value="${goodsInfo.bookId}">
                   		</form>
                   		   <div class="btn_section">
                   				<button type="button" id="cancelBtn" class="btn">취 소</button>	   
                   				<button type="button" id="enrollBtn" class="btn enroll_btn" >수 정</button>  
	                    	</div> 
	                    	<br></br>
	                	</div>
                    </div>  

  </div>
  <!-- /.container -->

  <!-- Footer -->
<%@ include file="footer.jsp"%>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
  <script>
  	
  /* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="bookImage"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		console.log("fileName : " + fileObj.name);
		console.log("fileSize : " + fileObj.size);
		console.log("fileType(MimeType) : " + fileObj.type);
		

		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}

		
		formData.append("bookImage", fileObj);
		
		$.ajax({
			url: '/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){
	    		showUploadImage(result);
	    	},
	    	error : function(result){
	    		alert("JPG, PNG 형식만 업로드할 수 있습니다.\n\n현재 파일 : " + fileName);
	    	}
		});	
		
	});
  /* 이미지 검증 */
	let regex = new RegExp("(.*?)\.(jpg|png|JPG|PNG)$");
	let maxSize = 1048576; //1MB
  
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			fileSize = fileSize/1048576;
			fileSize = fileSize.toFixed(2);
			alert("1MB 미만의 파일만 업로드할 수 있습니다.\n\n현재 파일 : " + fileSize+"MB");
			return false;
		}
		
		if(!regex.test(fileName)){
			alert("JPG, PNG 형식만 업로드할 수 있습니다.\n\n현재 파일 : " + fileName);
			return false;
		}
		
		return true;		
		
	}
  
  
		let modifyForm = $("#modifyForm")
		
		$('#cancelBtn').click(function(){
			
			history.back();
		    
		});
		

		/* 위지윅 적용 */

		ClassicEditor
			.create(document.querySelector('#bookContents_textarea'))
			.catch(error=>{
				console.error(error);
		});
		
//		if (CKEDITOR.instances.content.getData() == "") {
//			  alert("내용을 입력하세요.");
//			  CKEDITOR.instances.bookContents_textarea.focus();
//			}
		
		/* 상품 등록 버튼 */
		$("#enrollBtn").on("click",function(e){
			
			e.preventDefault();
			
			/* 체크 변수 */
			let bookNameCk = false;
			let authorCk = false;
			let publeYearCk = false;
			let publisherCk = false;
			let cateCodeCk = false;
			let priceCk = false;
			let introCk = false;
			let contentsCk = false;
			
			/* 체크 대상 변수 */
			let bookName = $("input[name='bookName']").val();
			let author = $("input[name='author']").val();
			let publeYear = $("input[name='publeYear']").val();
			let publisher = $("input[name='publisher']").val();
			let cateCode = $("select[name='cateCode']").val();
			let bookPrice = $("input[name='bookPrice']").val();
			let bookIntro = $("input[name='bookIntro']").val();
			let bookContents = $(".bct p").html();
			
			if(bookName){
				$(".bookName_warn").css('display','none');
				bookNameCk = true;
			} else {
				$(".bookName_warn").css('display','block');
				bookNameCk = false;
			}
			
			if(author){
				$(".author_warn").css('display','none');
				authorCk = true;
			} else {
				$(".author_warn").css('display','block');
				authorCk = false;
			}
			
			if(publeYear){
				$(".publeYear_warn").css('display','none');
				publeYearCk = true;
			} else {
				$(".publeYear_warn").css('display','block');
				publeYearCk = false;
			}	
			
			if(publisher){
				$(".publisher_warn").css('display','none');
				publisherCk = true;
			} else {
				$(".publisher_warn").css('display','block');
				publisherCk = false;
			}
			
			if(cateCode != 'none'){
				$(".cateCode_warn").css('display','none');
				cateCodeCk = true;
			} else {
				$(".cateCode_warn").css('display','block');
				cateCodeCk = false;
			}	
			
			if (bookPrice > 10000000) {
				$(".bookPrice_warn").text('책의 가격은 최대 1000만원입니다.');
				$(".bookPrice_warn").css('display','block');
				priceCk = false;
			} else if(bookPrice > 0 && bookPrice < 2147483648) {
				$(".bookPrice_warn").css('display','none');
				priceCk = true;
			} else if(bookPrice <= 0) {
				$(".bookPrice_warn").text('올바른 가격을 입력해주세요.');
				$(".bookPrice_warn").css('display','block');
				priceCk = false;
			} else {
				$(".bookPrice_warn").text('올바른 가격을 입력해주세요.');
				$(".bookPrice_warn").css('display','block');
			}

			
			if(bookIntro){
				$(".bookIntro_warn").css('display','none');
				introCk = true;
			} else {
				$(".bookIntro_warn").css('display','block');
				introCk = false;
			}	
			
			
			if(bookContents != '<br data-cke-filler="true">'){
				$(".bookContents_warn").css('display','none');
				contentsCk = true;
			} else {
				$(".bookContents_warn").css('display','block');
				contentsCk = false;
			}		
			
			if(bookNameCk && authorCk && publeYearCk && publisherCk && cateCodeCk && priceCk && introCk && contentsCk ){
				modifyForm.submit();
			} else {
				return false;
			}
			
		});
		
		
		/* 캘린더 위젯 적용 */
		
		/* 설정 */
		const config = {
			dateFormat: 'yy-mm-dd',
			showOn : "button",
			buttonText:"날짜 선택",
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    dayNames: ['일','월','화','수','목','금','토'],
		    dayNamesShort: ['일','월','화','수','목','금','토'],
		    dayNamesMin: ['일','월','화','수','목','금','토'],
		    yearSuffix: '년',
	        changeMonth: true,
	        changeYear: true
		}
		
		/* 캘린더 */
		$(function() {
			let publeYear = '${goodsInfo.publeYear}';
			$( "input[name='publeYear']" ).datepicker(config);
			$( "input[name='publeYear']" ).datepicker('setDate', publeYear);
		});
		 
		$(document).ready(function(){
			/* 카테고리 */
			let cateList = JSON.parse('${cateList}');
	
			let cate1Array = new Array();
			let cate2Array = new Array();
			let cate3Array = new Array();
			let cate1Obj = new Object();
			let cate2Obj = new Object();
			let cate3Obj = new Object();
			
			let cateSelect1 = $(".cate1");		
			let cateSelect2 = $(".cate2");
			let cateSelect3 = $(".cate3");
			
			/* 카테고리 배열 초기화 메서드 */
			function makeCateArray(obj,array,cateList, tier){
				for(let i = 0; i < cateList.length; i++){
					if(cateList[i].tier === tier){
						obj = new Object();
						
						obj.cateName = cateList[i].cateName;
						obj.cateCode = cateList[i].cateCode;
						obj.cateParent = cateList[i].cateParent;
						
						array.push(obj);				
						
					}
				}
			}	
			
				/* 배열 초기화 */
			makeCateArray(cate1Obj,cate1Array,cateList,1);
			makeCateArray(cate2Obj,cate2Array,cateList,2);
			makeCateArray(cate3Obj,cate3Array,cateList,3);
			
			
			let targetCate2 = '';
			let targetCate3 = '${goodsInfo.cateCode}';
			
				/* 소분류 */
			for(let i = 0; i < cate3Array.length; i++){
				if(targetCate3 === cate3Array[i].cateCode){
					targetCate3 = cate3Array[i];
				}
			}// for			
			
			for(let i = 0; i < cate3Array.length; i++){
				if(targetCate3.cateParent === cate3Array[i].cateParent){
					cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");
				}
			}				
			
			$(".cate3 option").each(function(i,obj){
				if(targetCate3.cateCode === obj.value){
					$(obj).attr("selected", "selected");
				}
			});			
			
				/* 중분류 */
			for(let i = 0; i < cate2Array.length; i++){
				if(targetCate3.cateParent === cate2Array[i].cateCode){
					targetCate2 = cate2Array[i];	
				}
			}// for		
			
			for(let i = 0; i < cate2Array.length; i++){
				if(targetCate2.cateParent === cate2Array[i].cateParent){
					cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");
				}
			}		
			
			$(".cate2 option").each(function(i,obj){
				if(targetCate2.cateCode === obj.value){
					$(obj).attr("selected", "selected");
				}
			});				
			
				/* 대분류 */
			for(let i = 0; i < cate1Array.length; i++){
				cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
			}	
			
			$(".cate1 option").each(function(i,obj){
				if(targetCate2.cateParent === obj.value){
					$(obj).attr("selected", "selected");
				}
			});	
		});
		
		/* 이미지 출력 */
		function showUploadImage(uploadResultArr){
			
			/* 전달받은 데이터 검증 */
			if(!uploadResultArr || uploadResultArr.length == 0){return}
			
			let uploadResult = $("#uploadResult");
			
			let obj = uploadResultArr[0];
			
			let str = "";
			
			let fileCallPath = obj.uploadPath.replace(/\\/g, '/') + "/" + obj.fileName;
			
			str += "<div id='result_card'>";
			str += "<img src='/display?fileName=" + fileCallPath +"'>";
			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
			str += "<input type='hidden' name='fileName' value='"+ obj.fileName +"'>";
			str += "<input type='hidden' name='uploadPath' value='"+ obj.uploadPath +"'>";		
			str += "</div>";		
			
	   		uploadResult.append(str);     
	        
		}	
		
		/* 파일 삭제 메서드 */
		function deleteFile(){
			
			let targetFile = $(".imgDeleteBtn").data("file");
			
			let targetDiv = $("#result_card");
			
			$.ajax({
				url: '/deleteFile',
				data : {fileName : targetFile},
				dataType : 'text',
				type : 'POST',
				success : function(result){
					console.log(result);
					
					targetDiv.remove();
					$("input[type='file']").val("");
					
				},
				error : function(result){
					console.log(result);
					
					alert("파일을 삭제하지 못하였습니다.")
				}
			});
		}
		
		/* 이미지 삭제 버튼 동작 */
		$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
			
			deleteFile();
			
		});
		
			
	</script> 

</body>

</html>
