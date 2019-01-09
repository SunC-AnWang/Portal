/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.AreasDao;
import com.qdu.dao.SaffDao;
import com.qdu.pojo.Saff;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class SaffDaoImpl extends BaseDaoImpl<Saff> implements SaffDao{

    @Override
    public List<Saff> getSaff() {
        
        return getListByQuery("from Saff");
        
    }

    
    
}
