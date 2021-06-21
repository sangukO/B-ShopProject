package com.myshop.controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpHeaders;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myshop.dto.BookDto;
import com.myshop.dto.Criteria;
import com.myshop.dto.ImageDto;
import com.myshop.dto.MemberDto;
import com.myshop.service.RegService;


@Controller
public class RegController {
	
	@Autowired
	private RegService regService;
	
    /* 상품 등록 페이지 접속 */
    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET(Model model) throws Exception {
    	
    	ObjectMapper objm = new ObjectMapper();
    	
    	List list = regService.cateList();
    	
    	String cateList = objm.writeValueAsString(list);
    	
    	model.addAttribute("cateList", cateList);
    }
	
	/* 파일 업로드 */
    @PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<ImageDto>> uploadAjaxActionPOST(MultipartFile bookImage) {
		
    	File checkfile = new File(bookImage.getOriginalFilename());
		String type = null;
		
		try {
			type = Files.probeContentType(checkfile.toPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(!type.startsWith("image")) {
			
			List<ImageDto> list = null;
			return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			
		}
    	
		String uploadFolder = "C:\\upload";
		
		/* 날자 폴더 경로 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", "/");
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		/* 이미저 정보 담는 객체 */
		List<ImageDto> list = new ArrayList();
		
		ImageDto dto = new ImageDto();
		
		/* 파일 이름 */
		String uploadFileName = bookImage.getOriginalFilename();
		dto.setFileName(uploadFileName);
		dto.setUploadPath(datePath);
		
		/* 파일 위치, 파일 이름을 합친 File 객체 */
		File saveFile = new File(uploadPath, uploadFileName);
		
		/* 파일 저장 */
		try {
			bookImage.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		list.add(dto);
		
		ResponseEntity<List<ImageDto>> result = new ResponseEntity<List<ImageDto>>(list, HttpStatus.OK);
		
		return result;

	}
    
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){

		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			org.springframework.http.HttpHeaders header = new org.springframework.http.HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
    
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
		File file = null;
		
		try {

			/* 파일 삭제 */
			file = new File("c:\\upload\\"+fileName);

			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}
	
	
	
    /* 상품 등록 */
	@PostMapping("/goodsEnroll")
	public String goodsEnrollPOST(int grade, String uploadUser, BookDto book) throws Exception {
		
		if(grade == 1) {
			regService.bookEnroll(book);
		} else {
			regService.bookEnrollHr(book);
		}
		return "redirect:/main";
	}	
	
	/* 상품 수정 */
	@PostMapping("/goodsmodify")
	public String goodsModifyPOST(BookDto book) throws Exception {
		
		regService.bookModify(book);
		
		return "redirect:/main";
	}	
    
	/* 상품 조회 페이지 */
	@GetMapping({"/goodsDetail", "/goodsModify"})
	public void goodsGetInfoGET(int bookId, Criteria cri, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		/* 카테고리 리스트 데이터 */
		model.addAttribute("cateList", mapper.writeValueAsString(regService.cateList()));
		
		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);
		
		/* 조회 페이지 정보 */
		model.addAttribute("goodsInfo", regService.goodsGetDetail(bookId));
		
		/* 카테고리 정보 */
		model.addAttribute("goodsCate", regService.goodsGetCate(bookId));
		
	}
	
	/* 상품 정보 삭제 */
	@PostMapping("/goodsDelete.do")
	public String goodsDeletePOST(int bookId, RedirectAttributes rttr) {
		
		int result = regService.goodsDelete(bookId);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/main";
		
	}
	
	/* 상품 판매 완료 */
	@PostMapping("/goodsPurchase")
	public String goodsPurchasePOST(int bookId, String uploadUser, String memberId) {
		
		/* 판매 개수 증가 */
		regService.userCount(uploadUser);
		
		/* 판매 완료 전환 */
		regService.goodsPurchase(bookId);
		
		/* 구매자 추가 */
		regService.goodsSetBuyer(memberId, bookId);
		
		/* 구매 개수 증가 */
		regService.buyCount(memberId);
		
		/* 유저 등급 상승 */
		regService.userGradeUp(uploadUser);
		
		return "redirect:/main";
	}
	
	
}