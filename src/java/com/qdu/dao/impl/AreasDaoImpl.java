/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.AreasDao;
import com.qdu.pojo.Areas;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class AreasDaoImpl extends BaseDaoImpl<Areas> implements AreasDao{

    @Override
    public List<Areas> getAreas() {
        
        return getListByQuery("from Areas");
        
    }

    
    
}
