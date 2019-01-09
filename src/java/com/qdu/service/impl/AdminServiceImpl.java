/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service.impl;
   
import com.qdu.dao.AdminDao;
import com.qdu.pojo.Admin;
import com.qdu.service.AdminService;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author zk
 */
@Service
public class AdminServiceImpl implements AdminService{
    
    
    @Autowired
    private AdminDao adminDao;

    @Override
    public Admin validateAdmin(int id, String pwd) {
        
        
        Admin admin=adminDao.getOneById(id);
        
        if(null!=admin&&admin.getPwd().equals(pwd))
            return admin;
        else 
            return null;
        
        
    }

    @Override
    public List getAdminList() {
          return  adminDao.getAdmin();
        
    }

    @Override
    public Admin getAdminById(int id) {
        return adminDao.getOneById(id);
    }

    @Override
    public void add(Admin Admin) {
        adminDao.insert(Admin);
    }

    @Override
    public void update(Admin Admin) {
        adminDao.update(Admin);
    }

    @Override
    public void delete(int id) {
        adminDao.delete(id);
    }

    
    
    
    
}
