package com.myshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.myshop.dto.Criteria;
import com.myshop.dto.PageDto;
import com.myshop.service.RegService;

@Controller
public class Jspcontroller {
	
	@Autowired
	private RegService regService;
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	/* 상품 목록 페이지 접속 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void goodsManageGET(Criteria cri, Model model) throws Exception{
	
		/* 상품 리스트 데이터 */
		List list = regService.goodsGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDto(cri, regService.goodsGetTotal(cri)));
	}
	
	/* 마이페이지 접속 */
	@RequestMapping("/mypage")
	public void mypage(Criteria cri, Model model) throws Exception {
		
		/* 사용자 판매 도서 검색 */
		List list = regService.bookSearch(cri);
		
		/* 사용자 구매 도서 검색 */
		List buyList = regService.buySearch(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
		}
		
		if(!buyList.isEmpty()) {
			model.addAttribute("buyList", buyList);
		} else {
			model.addAttribute("buyListCheck", "empty");
		}
		
	}
	
	/* 거절 사유 페이지 */
	@RequestMapping("/rfWhy")
	public void reWhy(int bookId, Model model) throws Exception {
		
		model.addAttribute("Why", regService.Whysearch(bookId));

	}

}
