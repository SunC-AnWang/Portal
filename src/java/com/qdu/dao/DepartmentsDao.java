
package com.qdu.dao;
import com.qdu.pojo.Departments;
import java.util.List;
   
/**
 *
 * @author zk
 */
public interface DepartmentsDao extends BaseDao<Departments>{
    
    List<Departments> getDepartments();
    
}
