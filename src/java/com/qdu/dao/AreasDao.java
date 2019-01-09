
package com.qdu.dao;
import com.qdu.pojo.Areas;
import java.util.List;

/**
 *
 * @author zk
 */
public interface AreasDao extends BaseDao<Areas>{
    
    List<Areas> getAreas();
    
}
   