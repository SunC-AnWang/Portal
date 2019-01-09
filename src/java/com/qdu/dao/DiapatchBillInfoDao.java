
package com.qdu.dao;

import com.qdu.pojo.DiapatchBillInfo;
import java.util.List;
   
/**
 *
 * @author zk
 */
public interface DiapatchBillInfoDao extends BaseDao<DiapatchBillInfo>{
    
    List<DiapatchBillInfo> getDiapatchBillInfo();
    
    
}
