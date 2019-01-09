/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;

import com.qdu.dao.OccupationsDao;
import com.qdu.pojo.Occupations;
import com.qdu.service.OccupationsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 *  
 */
@Service
public class OccupationsServiceImpl implements OccupationsService{
    
   @Autowired
    private OccupationsDao occupationsDao;

    @Override
    public List getOccupationsList() {
        return occupationsDao.getOccupations();
        
    }

    @Override
    public Occupations getOccupationsById(int oid) {
        return occupationsDao.getOneById(oid);
    }

    @Override
    public void add(Occupations Occupations) {
        occupationsDao.insert(Occupations);
    }

    @Override
    public void update(Occupations Occupations) {
        occupationsDao.update(Occupations);
    }

    @Override
    public void delete(int oid) {
        
        occupationsDao.delete(oid);
    }
    
}
