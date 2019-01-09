/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.WorkBillInfo;
import com.qdu.pojo.Departments;
import java.util.List;

/**
 *
 *  
 */
public interface WorkBillInfoService {
    
    List getWorkBillInfoList();
    WorkBillInfo getWorkBillInfoById(int wid);
    void add(WorkBillInfo WorkBillInfo);
    void update(WorkBillInfo WorkBillInfo);
    void delete(int wid);
    
}
