
package com.qdu.service;

import com.qdu.pojo.EmployeesInfo;
import java.util.List;

/**
 *
 *  
 */
public interface EmployeesInfoService {
    
    List getEmployeesInfoList();
    EmployeesInfo getEmployeesInfoById(int eid);
    void add(EmployeesInfo Employee);
    void update(EmployeesInfo Employee);
    void delete(int eid);
    EmployeesInfo validateEmployeesInfo(int eid,String epwd);
    
    
    
}
