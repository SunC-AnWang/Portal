/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.Areas;
import com.qdu.pojo.Departments;
import java.util.List;

/**
 *
 *  
 */
public interface AreasService {
    
    List getAreasList();
    Areas getAreasById(int rid);
    void add(Areas Areas);
    void update(Areas Areas);
    void delete(int rid);
    
}
