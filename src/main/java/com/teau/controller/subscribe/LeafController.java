package com.teau.controller.subscribe;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;

@Controller
public class LeafController {
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;
	
	
	@RequestMapping("/insertSubLeaf.do")
	@ResponseBody // viewResolver로 넘어가는 것을 방지 // Model은 json타입으로 오는 정보들을 vo로 맞춰주기 위히여
	public String insertSub(@ModelAttribute SubVO vo, Model model) throws IOException {
//		if (stringValue.equals("수정")) {
//			
//		}else {
//			
//		}
		leafService.insertSub(vo);
		System.out.println("Controller 삽입");
		return "OK";
	}
	
	@RequestMapping("/updateSubLeaf.do")
	public String updateSub(SubVO vo) throws IOException{
		leafService.updateSub(vo);
		return "redirect:getSubLeaf.do";
	}
	
	@RequestMapping("/deleteSubLeaf.do")
	public String deleteSub(SubVO vo) throws IOException{
		leafService.deleteSub(vo);
		return "redirect:getSubLeaf.do";
	}
	
	@RequestMapping("/getSubLeaf.do")
	public String getSub(SubVO vo, Model model) throws IOException{
		model.addAttribute("subLeaf", leafService.getSub(vo));
		return "redirect:mypage.do";
	}
	
}
