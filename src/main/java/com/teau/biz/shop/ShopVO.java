package com.teau.biz.shop;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ShopVO {
	// 상품번호
	private int teaId;
	// 주문카테고리(TO/TB)
	private String orderCate;
	//상품이름
	private String teaName;
	//상품가격
	private int teaPrice;
	// 상품이미지
	private String teaImg;
	// 멀티파일
	private MultipartFile uploadFile;
	
	//상품 정보
	private String teaInfo;
	//상품 등록일
	private String teaRegdate;
	
	// 태그
	private String tagBase;
	private String tagCaff;
	private String tagSeason;
	private String tagUser;
	private String tagTaste;
	private String tagEff;
	private String tagBlend;
	private String tagDrink;

}
