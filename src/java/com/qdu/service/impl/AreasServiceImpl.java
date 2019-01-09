/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;
   
import com.qdu.dao.AreasDao;
import com.qdu.pojo.Areas;
import com.qdu.service.AreasService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * 
 * @author zk
 */
@Service
public class AreasServiceImpl implements AreasService{
    
    @Autowired
    private AreasDao AreasDao;

    @Override
    public List getAreasList() {
        
        return AreasDao.getAreas();
    }

    @Override
    public Areas getAreasById(int rid) {
        
        return AreasDao.getOneById(rid);
    }

    @Override
    public void add(Areas Areas) {
        
        AreasDao.insert(Areas);
    }

    @Override
    public void update(Areas Areas) {
        AreasDao.update(Areas);
    }

    @Override
    public void delete(int rid) {
        AreasDao.delete(rid);
    }
    



    
}
