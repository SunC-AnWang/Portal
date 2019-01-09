
package com.qdu.service;

import com.qdu.pojo.Admin;
import java.util.List;

/**
 *
 *  
 */
public interface AdminService {
    
    List getAdminList();
    Admin getAdminById(int id);
    void add(Admin Admin);
    void update(Admin Admin);
    void delete(int id);
   
   
    Admin validateAdmin(int id,String pwd);
    
    
    
}
