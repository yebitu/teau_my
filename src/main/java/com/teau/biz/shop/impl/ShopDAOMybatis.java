package com.teau.biz.shop.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.shop.ShopVO;

@Repository
public class ShopDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertShop(ShopVO vo) {
		System.out.println("마이바티스DAO로 상품추가기능 처리");
		mybatis.insert("ShopDAO.insertShop", vo);
		// 테스트
		System.out.println(vo.getTeaName());
	}
	
	public void updateShop(ShopVO vo) {
		System.out.println("마이바티스DAO로 상품업데이트기능 처리");
		mybatis.update("ShopDAO.updateShop", vo);
		//테스트
		System.out.println(vo.getTeaId());
		System.out.println(vo.getTeaName());
	}
	
	public void deleteShop(ShopVO vo) {
		System.out.println("마이바티스DAO로 상품삭제기능 처리");
		mybatis.delete("ShopDAO.deleteShop", vo);
	}
	
	public ShopVO getShop(ShopVO vo) {
		System.out.println("마이바티스DAO로 상품상세보기기능 처리");
		return (ShopVO)mybatis.selectOne("ShopDAO.getShop", vo);
	}
	
	public List<ShopVO> getShopList(){
		System.out.println("마이바티스DAO로 상품목록보기기능 처리");
		return mybatis.selectList("ShopDAO.getShopList");
	}
	

}
