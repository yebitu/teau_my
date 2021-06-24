package com.teau.biz.subscribe.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;

@Service("seedService")
public class SeedServiceImpl implements SubService{
	@Autowired
	private SeedDAOMybatis subDAO;
	
	public SeedServiceImpl() {
	}
	
	public void insertSub(SubVO vo) {
		subDAO.insertSub(vo);
	}
	public void updateSub(SubVO vo) {
		subDAO.updateSub(vo);
	}
	
	public void deleteSub(SubVO vo) {
		subDAO.deleteSub(vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return subDAO.getSub(vo);
	}

 
}
