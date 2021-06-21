package com.myshop.dto;

public class MemberDto {
		//회원 id
		private String memberId;
		
		//회원 비밀번호
		private String memberPw;
		
		//회원 이름
		private String memberName;
		
		//회원 이메일
		private String memberMail;
		
		// 관리자 구분(0:관리자, 1~3:사용자)
		private int grade;
		
		//등록일자
		private int regDate;
		
		//회원 돈
		private int money;
		
		//회원 포인트
		private int point;
		
		//판매 카운트
		private int count;
		
		//구매 카운트
		private int buyCount;
		
		public int getBuyCount() {
			return buyCount;
		}

		public void setBuyCount(int buyCount) {
			this.buyCount = buyCount;
		}

		public int getCount() {
			return count;
		}

		public void setCount(int count) {
			this.count = count;
		}

		public String getMemberId() {
			return memberId;
		}

		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

		public String getMemberPw() {
			return memberPw;
		}

		public void setMemberPw(String memberPw) {
			this.memberPw = memberPw;
		}

		public String getMemberName() {
			return memberName;
		}

		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}

		public String getMemberMail() {
			return memberMail;
		}

		public void setMemberMail(String memberMail) {
			this.memberMail = memberMail;
		}

		public int getGrade() {
			return grade;
		}

		public void setGrade(int grade) {
			this.grade = grade;
		}

		public int getRegDate() {
			return regDate;
		}

		public void setRegDate(int regDate) {
			this.regDate = regDate;
		}

		public int getMoney() {
			return money;
		}

		public void setMoney(int money) {
			this.money = money;
		}

		public int getPoint() {
			return point;
		}

		public void setPoint(int point) {
			this.point = point;
		}

		@Override
		public String toString() {
			return "MemberDto [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
					+ ", memberMail=" + memberMail + ", grade=" + grade + ", regDate=" + regDate + ", money=" + money
					+ ", point=" + point + ", count=" + count + ", buyCount=" + buyCount + "]";
		}

}
