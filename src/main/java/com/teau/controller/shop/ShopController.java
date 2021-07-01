package com.teau.controller.shop;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class ShopController {
	@Autowired
	ShopService shopServie;
	
	// 1번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopSeason.do")
	public String shopSeason(Model model) {
		List<ShopVO> shopList = shopServie.getShopList();
		System.out.println("계절 상품 리스트 조회");
		model.addAttribute("shopList", shopList);
		return "shop/shopSeason";
	}
	
	// 2번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopUser.do")
	public String shopUser(Model model) {
		System.out.println("대상별 상품 리스트 조회");
		model.addAttribute("shopList", shopServie.getShopList());
		return "shop/shopUser";
	}
	
	// 3번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopBase.do")
	public String shopBase(Model model) {
		System.out.println("차종류별 상품 리스트 조회");
		model.addAttribute("shopList", shopServie.getShopList());
		return "shop/shopBase";
	}
	
	// 상품 등록 페이지로 이동
	@RequestMapping("/shopCreateMove.do")
	public String insertShopView() throws IOException {
		return "shop/shopCreate";
	}
	
	
//	@Resource(name = "uploadPath")
//	 private String uploadPath;
	 private String uploadPath = "D:/DEV2/workspace/TeaU/src/main/webapp/resource/imgUpload";

	
	// 상품 등록
	@RequestMapping(value = "/insertShop.do")
	public String insertShop(ShopVO vo) throws IOException {
		
		MultipartFile file = vo.getUploadFile();
		String imgUploadPath = uploadPath + File.separator;
		
		//파일 이름
		String fileName = file.getOriginalFilename();
		
		/*
		 * if(file.isEmpty()) { vo.setTeaImg(""); } else if(!file.isEmpty()) {
		 */
			System.out.println("파일 업로드 처리");
			vo.setTeaImg(fileName);
			System.out.println(fileName);
			file.transferTo(new File(imgUploadPath + fileName));
			/* } */		
			
		System.out.println("글 등록 처리");
		shopServie.insertShop(vo);
		return "redirect:shopSeason.do";
	}
	
	// 글 등록 Ajax
	

	// 상품 상세보기 페이지로 이동
	@RequestMapping("/shopDetails.do")
	public String getShop(ShopVO vo, Model model, @RequestParam("teaId") int teaId) throws IOException{
	System.out.println(teaId); // 리퀘스트파람 없어도 돌아감
	ShopVO tea = shopServie.getShop(vo);
	model.addAttribute("tea", tea);
	System.out.println("상품 상세보기 페이지-상품명: "+tea.getTeaName());
	return "shop/shopDetails";
		
	}
	
	//상품 상세보기

	/*
	 * @RequestMapping(value= "/shopDetails.do", produces =
	 * "application/json;  charset=utf8")
	 * 
	 * @ResponseBody public String getShopDetail(ShopVO vo, @RequestParam("teaId")
	 * String teaId) throws JsonProcessingException{
	 * System.out.println("상품번호:"+teaId);
	 * 
	 * vo.setTeaId(Integer.parseInt(teaId)); Map<String, Object> hashmap = new
	 * HashMap<String, Object>(); ShopVO tea = shopServie.getShop(vo);
	 * hashmap.put("tea", tea); ObjectMapper mapper = new ObjectMapper(); String
	 * json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
	 * return json;
	 * 
	 * }
	 */
	
	// 상품 수정
	
	@RequestMapping("/shopUpdate.do")
	public String shopUpdate(ShopVO vo) {
		return null;
	}
	
	// 상품 삭제
	
	
	//
	


}
