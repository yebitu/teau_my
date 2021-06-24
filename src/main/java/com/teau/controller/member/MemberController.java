package com.teau.controller.member;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Controller

public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	//회원가입페이지
	/*
	 * @RequestMapping(value = "/signUp.do", method = RequestMethod.GET) public
	 * String signUpGET() throws IOException{ return "WEB-INF/JSP/signUp.jsp"; }
	 */
	
	
	//회원가입 처리
	/*
	 * @RequestMapping(value = "/signUn.do", method = RequestMethod.POST) public
	 * String signUpPOST(MemberVO membervo, RedirectAttributes redirectAttributes)
	 * throws IOException{
	 * 
	 * }
	 */
	
	
	// 회원 등록
	@RequestMapping("/insertMember.do")
	public String insertMember(MemberVO vo) {
		System.out.println("회원가입  성공");
		memberService.insertMember(vo);
		return "redirect:login.do";

	}
	
	// 회원 수정
	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo, Model model) {
		System.out.println("updateMember");
		memberService.updateMember(vo);
		
		System.out.println("updateMember");
		System.out.println("memberId :" + vo.getMemberId());
		System.out.println("memberEmail :" + vo.getMemberEmail());
		System.out.println("memberAddress :" + vo.getMemberAddress());
		System.out.println("memberPass :" + vo.getMemberPass());
		System.out.println("memberPhone :" + vo.getMemberPhone());
		
		return "redirect:getMember.do";
	}
	
	// 회원 탈퇴
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo) throws IOException{
		System.out.println("deleteMember");
		memberService.deleteMember(vo);
		return "index.jsp";
	}
	
	@RequestMapping("/getMember.do")
	public String getMember(@RequestParam("memberId") String id, Model model) throws IOException{
		
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		System.out.println("getMember");
		
//		MemberVO member = memberService.getMember(vo);
		model.addAttribute("member", memberService.getMember(vo));
		return "redirect:mypage.do";
	}
	

	
	

}
