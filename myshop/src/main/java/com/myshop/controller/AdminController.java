package com.myshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myshop.dto.Criteria;
import com.myshop.dto.PageDto;
import com.myshop.service.AdminService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	/* 관리자 메인 페이지 접속 */
	@RequestMapping("/manage")
	public String manage() {
		return "/admin/manage";
	}
	
	/* 상품 관리 페이지 접속 */
	@GetMapping({"/adminTable", "/adminCharts"})
	public void adminGoodsManageGET(Criteria cri, Model model) throws Exception {
	
		/* 상품 리스트 데이터 */
		List list = adminService.adminGoodsGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDto(cri, adminService.adminGoodsGetTotal(cri)));
	}
	
	/* 상품 판매 승인 */
	@PostMapping("/goodsPass")
	public String goodsPassPost(int bookId) {
		
		adminService.goodsPass(bookId);
		
		return "redirect:/admin/adminCharts";
	}
	
	/* 상품 판매 승인2 */
	@PostMapping("/goodsPass2")
	public String goodsPassPost2(int bookId) {
		
		adminService.goodsPass(bookId);
		
		return "redirect:/goodsDetail?bookId=" + bookId;
	}
	
	/* 상품 판매 거절 */
	@PostMapping("/goodsRefuse")
	public String goodsRefusePost(int bookId, String Why) {
		
		adminService.goodsRefuseWhy(bookId, Why);
		adminService.goodsRefuse(bookId);
		
		return "redirect:/admin/adminCharts";
	}
	
	/* 상품 판매 거절2 */
	@PostMapping("/goodsRefuse2")
	public String goodsRefusePost2(int bookId) {
		
		adminService.goodsRefuse(bookId);
		
		return "redirect:/goodsDetail?bookId=" + bookId;
	}
}
