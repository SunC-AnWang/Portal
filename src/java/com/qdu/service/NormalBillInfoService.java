/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.NormalBillInfo;
import java.util.List;

/**
 *
 *  
 */
public interface NormalBillInfoService {
    
    List getNormalBillInfoList();
    NormalBillInfo getNormalBillInfoById(int nid);
    void add(NormalBillInfo NormalBillInfo);
    void update(NormalBillInfo NormalBillInfo);
    void delete(int nid);
    
}
