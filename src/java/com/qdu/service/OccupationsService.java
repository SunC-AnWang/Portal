/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.pojo.Occupations;
import java.util.List;

/**
 *
 *  
 */
public interface OccupationsService {
    List getOccupationsList();
   Occupations getOccupationsById(int oid);
    void add(Occupations Occupations);
    void update(Occupations Occupations);
    void delete(int oid);
}
