
package com.qdu.service;

import com.qdu.pojo.DiapatchBillInfo;
import java.util.List;

/**
 *
 *  
 */
public interface DiapatchBillInfoService {
    
    List getDiapatchBillInfoList();
    DiapatchBillInfo getDiapatchBillInfoById(int did);
    void add(DiapatchBillInfo DiapatchBillInfo);
    void update(DiapatchBillInfo DiapatchBillInfo);
    void delete(int did);
    
    
    
    
}
