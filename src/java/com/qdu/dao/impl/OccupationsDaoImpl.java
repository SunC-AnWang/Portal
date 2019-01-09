/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao.impl;
   
import com.qdu.dao.OccupationsDao;
import com.qdu.pojo.Occupations;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zk
 */
@Repository
public class OccupationsDaoImpl extends BaseDaoImpl<Occupations> implements OccupationsDao{

    @Override
    public List<Occupations> getOccupations() {
        return getListByQuery("from Occupations");
    }
    
}
