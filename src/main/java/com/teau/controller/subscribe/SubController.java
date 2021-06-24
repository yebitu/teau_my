package com.teau.controller.subscribe;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teau.biz.member.MemberVO;
import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubTreeService;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.subscribe.impl.TreeServiceImpl;

@Controller
public class SubController {
	
	@Autowired
	@Qualifier("seedService")
	private SubService seedService;
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;

	@Autowired
	@Qualifier("treeService")
	private TreeServiceImpl treeService;
	
	@RequestMapping("/subscribe_main.do")
	public String main() {
		return "WEB-INF/JSP/subscribe_main.jsp";
	}
	
	@RequestMapping("/subscribe_seed.do")
	public String seed(HttpServletRequest request, Model model) {		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		model.addAttribute("member", member);
		return "WEB-INF/JSP/subscribe_seed.jsp";
	}
	
	@RequestMapping("/subscribe_leaf.do")
	public String leaf(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		model.addAttribute("member", member);
		return "WEB-INF/JSP/subscribe_leaf.jsp";
	}
	
	@RequestMapping("/subscribe_tree.do")
	public String tree() {		
//		HttpSession session = request.getSession();
//		MemberVO member = (MemberVO)session.getAttribute("member");	
//		// "member"은 나중에 필요시 "user"로 바꿔서 넘겨줘도 ok
//		model.addAttribute("member", member);		
//		System.out.println(teaList);
//		
//		for(SubTeaVO tea : teaList) {
//			System.out.println(tea.toString());
//		}
//		model.addAttribute("teaList", treeService.getTeaList());
//		return "WEB-INF/JSP/subscribe_tree.jsp";
		return "/getTeaList.do";
	}
	
	@RequestMapping("/mypage.do")
	public String my(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		SubVO vo = new SubVO();
		vo.setSubUser(member.getMemberId());
		
		if(treeService.getSub(vo) != null ) {
			SubVO sub = treeService.getSub(vo);
			model.addAttribute("sub", sub);
		} else if(leafService.getSub(vo) != null) {
			SubVO sub = leafService.getSub(vo);
			model.addAttribute("sub", sub);
		} else if(seedService.getSub(vo) != null) {
			SubVO sub = seedService.getSub(vo);
			model.addAttribute("sub", sub);
		} else {			
			model.addAttribute("sub", null);
		}
		
		// 모든 구독이 널일 때
		
		return "WEB-INF/JSP/mypage.jsp";
	}
}
