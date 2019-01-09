/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.Saff;
import java.util.List;

/**
 *
 *  
 */
public interface SaffService {
    
    List getSaffList();
    Saff getSaffById(int sid);
    void add(Saff Saff);
    void update(Saff Saff);
    void delete(int sid);
    
}
