
package com.qdu.dao;
import com.qdu.pojo.Saff;
import java.util.List;
   
/**
 *
 * @author zk
 */
public interface SaffDao extends BaseDao<Saff>{
    
    List<Saff> getSaff();
    
}
