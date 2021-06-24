package com.teau.biz.member;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private String memberId;
	private String memberPass;
//	private String memberPasscheck;
	private String memberName;
	private String memberEmail;
	private String memberPhone;
//	private String memberZipcode;
	private String memberAddress;
	private int memberPoint;
	private Date memberJoindate;

}
