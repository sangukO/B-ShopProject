package com.myshop.dto;

public class ImageDto {
	
	/* 경로 */
	private String uploadPath;
	
	/* 파일 이름 */
	private String fileName;
	
	/* 상품 id */
	private int bookId;

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

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	@Override
	public String toString() {
		return "ImageDto [uploadPath=" + uploadPath + ", fileName=" + fileName + ", bookId=" + bookId + "]";
	}
	
}