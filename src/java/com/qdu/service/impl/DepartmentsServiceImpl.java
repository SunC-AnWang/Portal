/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;
   
import com.qdu.dao.DepartmentsDao;
import com.qdu.pojo.Departments;

import com.qdu.service.DepartmentsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * 
 * @author zk
 */
@Service
public class DepartmentsServiceImpl implements DepartmentsService{
    
    @Autowired
    private DepartmentsDao DepartmentsDao;
    

    @Override
    public List getDepartmentsList() {
        
        return DepartmentsDao.getDepartments();
    }

    @Override
    public Departments getDepartmentsById(int deId) {
        return DepartmentsDao.getOneById(deId);
    }

    @Override
    public void add(Departments Departments) {
        DepartmentsDao.insert(Departments);
    }

    @Override
    public void update(Departments Departments) {
        DepartmentsDao.update(Departments);
    }

    @Override
    public void delete(int deId) {
        DepartmentsDao.delete(deId);
    }



    
}
