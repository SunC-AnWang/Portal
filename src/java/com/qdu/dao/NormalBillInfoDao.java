
package com.qdu.dao;
import com.qdu.pojo.NormalBillInfo;
import java.util.List;
   
/**
 *
 * @author zk
 */
public interface NormalBillInfoDao extends BaseDao<NormalBillInfo>{
    
    List<NormalBillInfo> getNormalBillInfo();
    
}
