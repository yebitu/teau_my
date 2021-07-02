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
import com.teau.biz.subscribe.SubVO;

@Controller
public class ShopController {
	@Autowired
	ShopService shopService;
	
	// 1번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopSeason.do")
	public String shopSeason(Model model) {
		List<ShopVO> shopList = shopService.getShopList();
		System.out.println("계절 상품 리스트 조회");
		model.addAttribute("shopList", shopList);
		return "shop/shopSeason";
	}
	
	// 2번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopUser.do")
	public String shopUser(Model model) {
		System.out.println("대상별 상품 리스트 조회");
		model.addAttribute("shopList", shopService.getShopList());
		return "shop/shopUser";
	}
	
	// 3번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopBase.do")
	public String shopBase(Model model) {
		System.out.println("차종류별 상품 리스트 조회");
		model.addAttribute("shopList", shopService.getShopList());
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
		shopService.insertShop(vo);
		return "redirect:shopSeason.do";
	}
	
	// 글 등록 Ajax
	

	// 상품 상세보기 페이지로 이동
	@RequestMapping("/shopDetails.do")
	public String getShop(ShopVO vo, Model model, @RequestParam("teaId") int teaId) throws IOException{
	System.out.println(teaId); // 리퀘스트파람 없어도 돌아감
	ShopVO tea = shopService.getShop(vo);
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
	
	// 상품 수정 페이지 이동
	@RequestMapping("/updateShopView.do")
	public String updateView(ShopVO vo, Model model) {
		return "shop/shopUpdate";
	}
	
	// 상품 수정(ajax)
		// shopAdmin.jsp에서 updateJson()함수로 보낸 값을  맵과 해시맵을 사용해 매핑, 제이슨으로 변환
	@RequestMapping(value="/updateLoad.do", produces="application/text; charset=utf8")
	@ResponseBody
	public String updateLoad(@RequestParam Map<String, String> paramMap) throws JsonProcessingException{
		ShopVO tea = new ShopVO();
		tea.setTeaId(Integer.parseInt(paramMap.get("teaId")));
		
		ShopVO teaInDB = shopService.getShop(tea);
		
		Map<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("teaInDB", teaInDB);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		return json;
	}
	
		//
	@RequestMapping(value="/updateShop.do", produces="application/json; charset=utf8")
	@ResponseBody
	public String updateShop(ShopVO vo) throws JsonProcessingException {
		shopService.updateShop(vo);		
		return "상품이 수정 되었습니다";
//		return "redirect:shopDetails.do?teaId="+teaId;
	}
	
	// 상품 수정(ajax 사용  하기 전)
//	@RequestMapping("/updateShop.do")
//	public String updateShop(ShopVO vo) throws IOException {
//		int teaId = vo.getTeaId();
//		// vo.setTeaId(teaId); 이렇게 아이디값을 받아서 객체에 세팅해줄 필요 없음! 이미 값을 다 갖고 들어옴
//		shopService.updateShop(vo);
//		System.out.println("상품이 수정 되었습니다");
//		return "redirect:shopDetails.do?teaId="+teaId;
//	}
	
	// 상품 삭제
	@RequestMapping("/deleteShop.do")
	public String deleteShop(ShopVO vo) {
		System.out.println("상품이 삭제되었습니다");
		shopService.deleteShop(vo);
		return "redirect:shopSeason.do";
	}
	
	
	//
	


}
