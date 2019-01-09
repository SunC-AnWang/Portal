/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;

import com.qdu.dao.NormalBillInfoDao;
import com.qdu.pojo.Areas;
import com.qdu.pojo.NormalBillInfo;
import com.qdu.service.NormalBillInfoService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * 
 *  
 */
@Service
public class NormalBillInfoServiceImpl implements NormalBillInfoService{
    
    @Autowired
    private NormalBillInfoDao NormalBillInfoDao;

    @Override
    public List getNormalBillInfoList() {
        return NormalBillInfoDao.getNormalBillInfo();
    }

    @Override
    public NormalBillInfo getNormalBillInfoById(int nid) {
        return NormalBillInfoDao.getOneById(nid);
    }

    @Override
    public void add(NormalBillInfo NormalBillInfo) {

        NormalBillInfoDao.insert(NormalBillInfo);
    }

    @Override
    public void update(NormalBillInfo NormalBillInfo) {
        NormalBillInfoDao.update(NormalBillInfo);
    }

    @Override
    public void delete(int nid) {
        NormalBillInfoDao.delete(nid);
    }




    
}
