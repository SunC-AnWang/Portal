/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.Departments;
import java.util.List;

/**
 *
 *  
 */
public interface DepartmentsService {
    
    List getDepartmentsList();
    Departments getDepartmentsById(int deId);
    void add(Departments Departments);
    void update(Departments Departments);
    void delete(int deId);
    
}
