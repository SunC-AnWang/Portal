/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;

import com.qdu.dao.WorkBillInfoDao;
import com.qdu.pojo.WorkBillInfo;
import com.qdu.service.WorkBillInfoService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * 
 *  
 */
@Service
public class WorkBillInfoServiceImpl implements WorkBillInfoService{
    
    @Autowired
    private WorkBillInfoDao WorkBillInfoDao;

    @Override
    public List getWorkBillInfoList() {
        
        return WorkBillInfoDao.getWorkBillInfo();
    }

    @Override
    public WorkBillInfo getWorkBillInfoById(int wid) {
        
        return WorkBillInfoDao.getOneById(wid);
    }

    @Override
    public void add(WorkBillInfo WorkBillInfo) {
        
        WorkBillInfoDao.insert(WorkBillInfo);
    }

    @Override
    public void update(WorkBillInfo WorkBillInfo) {
        WorkBillInfoDao.update(WorkBillInfo);
    }

    @Override
    public void delete(int wid) {
        WorkBillInfoDao.delete(wid);
    }
    



    
}
