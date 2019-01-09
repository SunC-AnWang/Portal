/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;
   
import com.qdu.pojo.Occupations;
import java.util.List;

/**
 *
 * @author zk
 */
public interface OccupationsDao extends BaseDao<Occupations>{
    
    List<Occupations>getOccupations(); 
    
}
