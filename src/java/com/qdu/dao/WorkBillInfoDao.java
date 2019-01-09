
package com.qdu.dao;
import com.qdu.pojo.WorkBillInfo;
import java.util.List;
    
/**
 *
 * @author zk
 */
public interface WorkBillInfoDao extends BaseDao<WorkBillInfo>{
    
    List<WorkBillInfo> getWorkBillInfo();
    
}
