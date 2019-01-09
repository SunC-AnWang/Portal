/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;
   
import com.qdu.dao.DiapatchBillInfoDao;
import com.qdu.pojo.DiapatchBillInfo;
import com.qdu.service.DiapatchBillInfoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author zk
 */
@Service
public class DiapatchBillInfoServiceImpl implements DiapatchBillInfoService{
    
    
    @Autowired
    private DiapatchBillInfoDao diapatchBillInfoDao;

    @Override
    public List getDiapatchBillInfoList() {
        return diapatchBillInfoDao.getDiapatchBillInfo();
    }

    @Override
    public DiapatchBillInfo getDiapatchBillInfoById(int did) {
        return diapatchBillInfoDao.getOneById(did);
    }

    @Override
    public void add(DiapatchBillInfo DiapatchBillInfo) {
        diapatchBillInfoDao.insert(DiapatchBillInfo);
    }

    @Override
    public void update(DiapatchBillInfo DiapatchBillInfo) {
        diapatchBillInfoDao.update(DiapatchBillInfo);
    }

    @Override
    public void delete(int did) {
        diapatchBillInfoDao.delete(did);
    }
    
  
    
}
