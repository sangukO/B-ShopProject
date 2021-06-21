package com.myshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myshop.dto.BookDto;
import com.myshop.dto.Criteria;
import com.myshop.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;	
	
	/* 상품 리스트 */
	@Override
	public List<BookDto> adminGoodsGetList(Criteria cri) {
		return adminMapper.adminGoodsGetList(cri);
	}

	/* 상품 총 갯수 */
	public int adminGoodsGetTotal(Criteria cri) {
		return adminMapper.adminGoodsGetTotal(cri);
	}	
	
	/* 상품 판매 승인 */
	@Override
	public int goodsPass(int bookId) {
		
		return adminMapper.goodsPass(bookId);
	}	
	
	/* 상품 판매 거절 */
	@Override
	public int goodsRefuse(int bookId) {
		
		return adminMapper.goodsRefuse(bookId);
	}	
	
	/* 거절 사유 작성 */
	@Override
	public int goodsRefuseWhy(int bookId, String Why) {
		
		return adminMapper.goodsRefuseWhy(bookId, Why);
	}
}
