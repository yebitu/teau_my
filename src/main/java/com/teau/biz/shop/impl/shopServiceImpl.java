package com.teau.biz.shop.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	@Autowired
	private ShopDAOMybatis ShopDAO;
	
	//초기화
	public ShopServiceImpl() {
		
	}
	
	public void insertShop(ShopVO vo) {
		ShopDAO.insertShop(vo);

	}

	
	public void updateShop(ShopVO vo) {
		ShopDAO.updateShop(vo);

	}

	
	public void deleteShop(ShopVO vo) {
		ShopDAO.deleteShop(vo);

	}

	
	public ShopVO getShop(ShopVO vo) {
		return ShopDAO.getShop(vo);
	}

	
	public List<ShopVO> getShopList() {
		return ShopDAO.getShopList();
	}

}
