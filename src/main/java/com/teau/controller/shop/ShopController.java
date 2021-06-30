package com.teau.controller.shop;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class ShopController {
	@Autowired
	ShopService shopServie;
	
	// 1번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopseason.do")
	public String shopSeason(Model model) {
		System.out.println("계절 상품 리스트 조회");
		model.addAttribute("shopSeasonList", shopServie.getListShop());
		return "/shop/shopseason";
	}
	
	// 2번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopuser.do")
	public String shopUser(Model model) {
		System.out.println("대상별 상품 리스트 조회");
		model.addAttribute("shopUserList", shopServie.getListShop());
		return "/shop/shopuser";
	}
	
	// 3번 쇼핑몰 상품리스트 조회
	@RequestMapping("/shopbase.do")
	public String shopBase(Model model) {
		System.out.println("차종류별 상품 리스트 조회");
		model.addAttribute("shopBaseList", shopServie.getListShop());
		return "/shop/shopbase";
	}
	
	// 

	// 상품 상세보기 페이지로 이동
	@RequestMapping("/shopViewer.do")
	public String getShop(ShopVO vo, Model model, @RequestParam("teaId") int teaId) throws IOException{
		
	System.out.println("글 상세보기 페이지 이동");
	return "/shop/shop_details";
		
	}
	
	//상품 상세보기

	@RequestMapping(value= "/getShopDetail.do", produces = "application/json; carset=utf8")
	@ResponseBody
	public String getShopDetail(ShopVO vo, @RequestParam("teaId") String teaId) throws JsonProcessingException{
		System.out.println("상품번호:"+teaId);
		
		vo.setTeaID(Integer.parseInt(teaId));
		Map<String, Object> hashmap = new HashMap<String, Object>();
		ShopVO tea = shopServie.getShop(vo);
		hashmap.put("tea", tea);
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
		return json;
		
	}
	


}
