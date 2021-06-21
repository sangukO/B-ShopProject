package com.myshop.service;

import java.util.List;

import com.myshop.dto.BookDto;
import com.myshop.dto.Criteria;


public interface AdminService {
	
	/* 상품 리스트 */
	public List<BookDto> adminGoodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int adminGoodsGetTotal(Criteria cri);	
	
	/* 상품 판매 승인 */
	public int goodsPass(int bookId);
	
	/* 상품 판매 거절 */
	public int goodsRefuse(int bookId);
	
	/* 거절 사유 */
	public int goodsRefuseWhy(int bookId, String Why);
	
}
