package com.myshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dto.BookDto;
import com.myshop.dto.CateDto;
import com.myshop.dto.Criteria;
import com.myshop.dto.ImageDto;
import com.myshop.mapper.RegMapper;

@Service
public class RegServiceImpl implements RegService {
	
	@Autowired
	private RegMapper regMapper;
	
	/* 도서 등록 */
	@Override
	public void bookEnroll(BookDto book) {
		
		
		regMapper.bookEnroll(book);
		
	}
	
	/* 상위 등급 도서 등록 */
	@Override
	public void bookEnrollHr(BookDto book) {
		
		
		regMapper.bookEnrollHr(book);
		
	}
	
	/* 카운트 증가 */
	@Override
	public void userCount(String uploadUser) {
		
		
		regMapper.userCount(uploadUser);
		
	}
	
	/* 카테고리 리스트 */
	@Override
	public List<CateDto> cateList() {
		
		return regMapper.cateList();
	}
	
	/* 상품 리스트 */
	@Override
	public List<BookDto> goodsGetList(Criteria cri) {
		return regMapper.goodsGetList(cri);
	}

	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri) {
		return regMapper.goodsGetTotal(cri);
	}	
	
	/* 상품 조회 페이지 */
	@Override
	public BookDto goodsGetDetail(int bookId) {
		
		return regMapper.goodsGetDetail(bookId);
	}	
	
	/* 카테고리 조회 */
	@Override
	public BookDto goodsGetCate(int bookId) {
		
		return regMapper.goodsGetCate(bookId);
	}
	
	/* 상품 정보 삭제 */
	@Override
	public int goodsDelete(int bookId) {
		
		return regMapper.goodsDelete(bookId);
	}	
	
	/* 상품 판매 완료 */
	@Override
	public int goodsPurchase(int bookId) {
		
		return regMapper.goodsPurchase(bookId);
	}	
	
	/* 유저 등급 업*/
	@Override
	public int userGradeUp(String uploadUser) {
		
		return regMapper.userGradeUp(uploadUser);
	}	
	
	/* 도서 수정 */
	@Override
	public void bookModify(BookDto book) {
		
		
		regMapper.bookModify(book);
		
	}
	
	/* 사용자 판매 도서 검색 */
	@Override
	public List<BookDto> bookSearch(Criteria cri) {
		
		return regMapper.bookSearch(cri);
	}
	
	/* 거절 사유 조회 */
	@Override
	public String Whysearch(int bookId) {
		
		return regMapper.Whysearch(bookId);
	}
	
	/* 구매자 추가 */
	@Override
	public int goodsSetBuyer(String memberId, int bookId) {
		
		return regMapper.goodsSetBuyer(memberId, bookId);
	}
	
	/* 구매 카운트 증가 */
	@Override
	public void buyCount(String memberId) {
		
		
		regMapper.buyCount(memberId);
		
	}
	
	/* 사용자 구매 도서 검색 */
	@Override
	public List<BookDto> buySearch(Criteria cri) {
		
		return regMapper.buySearch(cri);
	}
}