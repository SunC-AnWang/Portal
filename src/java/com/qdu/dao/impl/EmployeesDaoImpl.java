
package com.qdu.dao.impl;

import com.qdu.dao.EmployeesDao;
import com.qdu.pojo.EmployeesInfo;
import java.util.List;
    
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class EmployeesDaoImpl extends BaseDaoImpl<EmployeesInfo> implements EmployeesDao{
    
    
    @Override
    public List<EmployeesInfo> getEmployeesInfo() {
        return getListByQuery("from EmployeesInfo");
    }
    
}
