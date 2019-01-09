/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.WorkBillInfoDao;
import com.qdu.pojo.WorkBillInfo;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class WorkBillInfoDaoImpl extends BaseDaoImpl<WorkBillInfo> implements WorkBillInfoDao{

    @Override
    public List<WorkBillInfo> getWorkBillInfo() {
        
        return getListByQuery("from WorkBillInfo");
        
    }

    
    
}
