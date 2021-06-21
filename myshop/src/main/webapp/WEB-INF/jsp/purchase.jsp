<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl 태그 -->

<% String memberName = (String)request.getAttribute("memberName"); %>
<% String bookName = (String)request.getAttribute("memberName"); %>
<% String bookPrice = (String)request.getAttribute("memberName"); %>
<% String memberName = (String)request.getAttribute("memberName"); %>









<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B-Shop</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<body>

<script>
function iamport(){
		//가맹점 식별코드
		IMP.init('imp98324661');
		IMP.request_pay({
		    pg : 'kakaopay',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : ${goodsInfo.bookName } , //결제창에서 보여질 이름
		    amount : ${goodsInfo.bookPrice } , //실제 결제되는 가격
		    buyer_email : ${member.memberMail},
		    buyer_name : ${member.memberName},
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울 강남구 도곡동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		    location.href='/main';
		});
}
</script>
<h1>구매 페이지</h1>
</body>
</html>