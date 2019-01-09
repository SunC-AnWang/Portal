/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;

import com.qdu.dao.EmployeesDao;
import com.qdu.pojo.EmployeesInfo;
import com.qdu.service.EmployeesInfoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 *  
 */
@Service
public class EmployeesInfoServiceImpl implements EmployeesInfoService{
    
    
    @Autowired
    private EmployeesDao employeesDao;
    
    
    @Override
    public List getEmployeesInfoList() {
        return employeesDao.getEmployeesInfo();
        
    }

    @Override
    public EmployeesInfo getEmployeesInfoById(int eid) {
        return employeesDao.getOneById(eid);
    }

    @Override
    public void add(EmployeesInfo Employee) {
        employeesDao.insert(Employee);
        
    }

    @Override
    public void update(EmployeesInfo Employee) {
        employeesDao.update(Employee);
    }

    @Override
    public void delete(int eid) {
        employeesDao.delete(eid);
    }

    @Override
    public EmployeesInfo validateEmployeesInfo(int eid, String epwd) {
        EmployeesInfo em =employeesDao.getOneById(eid);
        if(null!=em&&em.getEpwd().equals(epwd))
            return em;
        else
            return null;
    }
        
        
    
    
    
    
}
