/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.DiapatchBillInfoDao;
import com.qdu.pojo.DiapatchBillInfo;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class DiapatchBillInfoDaoImpl extends BaseDaoImpl<DiapatchBillInfo> implements DiapatchBillInfoDao{

    @Override
    public List<DiapatchBillInfo> getDiapatchBillInfo() {
        return getListByQuery("from DiapatchBillInfo");
    }
    
}
