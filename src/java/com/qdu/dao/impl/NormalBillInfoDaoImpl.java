/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.NormalBillInfoDao;
import com.qdu.pojo.NormalBillInfo;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class NormalBillInfoDaoImpl extends BaseDaoImpl<NormalBillInfo> implements NormalBillInfoDao{

    @Override
    public List<NormalBillInfo> getNormalBillInfo() {
        
        return getListByQuery("from NormalBillInfo");
        
    }

    
    
}
