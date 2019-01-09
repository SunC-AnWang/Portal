
package com.qdu.dao.impl;
   
import com.qdu.dao.AdminDao;
import com.qdu.dao.EmployeesDao;
import com.qdu.pojo.Admin;
import com.qdu.pojo.EmployeesInfo;
import java.util.List;

import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao{
    
    
    @Override
    public List<Admin> getAdmin() {
        return getListByQuery("from Admin");
    }
    
}
