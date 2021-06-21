package com.myshop.dto;

import java.sql.Date;

public class BookDto {
	/* 상품 id */
	private int bookId;
	
	/* 상품 이름 */
	private String bookName;
	
	/* 유저 이름 */
	private String uploadUser;

	/* 작가 이름 */
	private String author;
	
	/* 출판일 */
	private String publeYear;
	
	/* 출판사 */
	private String publisher;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int bookPrice;
	
	/* 상품 소개 */
	private String bookIntro;
	
	/* 상품 목차 */
	private String bookContents;
	
	/* 등록 날짜 */
	private Date regDate;
	
	/* 수정 날짜 */
	private Date updateDate;
	
	/* 도서 상태 */
	private String bookStatus;
	
	/* 구매자 이름 */
	private String buyer;
	
	/* 경로 */
	private String uploadPath;
	
	/* 파일 이름 */
	private String fileName;
	
	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(String bookStatus) {
		this.bookStatus = bookStatus;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getUploadUser() {
		return uploadUser;
	}

	public void setUploadUser(String uploadUser) {
		this.uploadUser = uploadUser;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPubleYear() {
		return publeYear;
	}

	public void setPubleYear(String publeYear) {
		this.publeYear = publeYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public int getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}

	public String getBookIntro() {
		return bookIntro;
	}

	public void setBookIntro(String bookIntro) {
		this.bookIntro = bookIntro;
	}

	public String getBookContents() {
		return bookContents;
	}

	public void setBookContents(String bookContents) {
		this.bookContents = bookContents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "BookDto [bookId=" + bookId + ", bookName=" + bookName + ", uploadUser=" + uploadUser + ", author="
				+ author + ", publeYear=" + publeYear + ", publisher=" + publisher + ", cateCode=" + cateCode
				+ ", cateName=" + cateName + ", bookPrice=" + bookPrice + ", bookIntro=" + bookIntro + ", bookContents="
				+ bookContents + ", regDate=" + regDate + ", updateDate=" + updateDate + ", bookStatus=" + bookStatus
				+ ", buyer=" + buyer + ", uploadPath=" + uploadPath + ", fileName=" + fileName + "]";
	}
	
}
