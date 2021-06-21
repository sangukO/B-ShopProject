package com.myshop.mapper;

import java.util.List;

import com.myshop.dto.BookDto;
import com.myshop.dto.CateDto;
import com.myshop.dto.Criteria;
import com.myshop.dto.ImageDto;

public interface RegMapper {
	/* 도서 등록 */
	public void bookEnroll(BookDto book);
	
	/* 상위 등급 도서 등록 */
	public void bookEnrollHr(BookDto book);
	
	/* 카운트 증가 */
	public void userCount(String uploadUser);
	
	/* 카테고리 리스트 */
	public List<CateDto> cateList();
	
	/* 상품 리스트 */
	public List<BookDto> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);
	
	/* 상품 조회 페이지 */
	public BookDto goodsGetDetail(int bookId);
	
	/* 상품 조회 페이지 */
	public BookDto goodsGetCate(int bookId);
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int bookId);
	
	/* 상품 판매 완료 */
	public int goodsPurchase(int bookId);
	
	/* 유저 등급 업 */
	public int userGradeUp(String uploadUser);
	
	/* 도서 수정 */
	public void bookModify(BookDto book);
	
	/* 사용자 판매 도서 검색 */
	public List<BookDto> bookSearch(Criteria cri);
	
	/* 거절 사유 조회 */
	public String Whysearch(int bookId);
	
	/* 구매자 추가 */
	public int goodsSetBuyer(String memberId, int bookId);
	
	/* 구매 카운트 증가 */
	public void buyCount(String memberId);
	
	/* 사용자 구매 도서 검색 */
	public List<BookDto> buySearch(Criteria cri);
}