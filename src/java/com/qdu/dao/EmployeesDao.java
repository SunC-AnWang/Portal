/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;
   
import com.qdu.pojo.EmployeesInfo;
import java.util.List;

/**
 *
 * @author zk
 */
public interface  EmployeesDao extends BaseDao<EmployeesInfo> {
   
    
   
    List<EmployeesInfo> getEmployeesInfo();
    
    
    
}
