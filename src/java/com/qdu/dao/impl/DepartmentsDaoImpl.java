/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.DepartmentsDao;
import com.qdu.pojo.Departments;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class DepartmentsDaoImpl extends BaseDaoImpl<Departments> implements DepartmentsDao{

    @Override
    public List<Departments> getDepartments() {
        return getListByQuery("from Departments");
    }
    
}
