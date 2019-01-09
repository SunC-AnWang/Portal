/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;

import com.qdu.dao.SaffDao;
import com.qdu.pojo.Saff;
import com.qdu.service.SaffService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * 
 *  
 */
@Service
public class SaffServiceImpl implements SaffService{
    
    @Autowired
    private SaffDao saffDao;

    @Override
    public List getSaffList() {
        
        return saffDao.getSaff();
    }

    @Override
    public Saff getSaffById(int sid) {
        
        return saffDao.getOneById(sid);
    }

    @Override
    public void add(Saff Saff) {
        
        saffDao.insert(Saff);
    }

    @Override
    public void update(Saff Saff) {
        saffDao.update(Saff);
    }

    @Override
    public void delete(int sid) {
        saffDao.delete(sid);
    }
    



    
}
