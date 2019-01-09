package com.qdu.controller;

import com.qdu.pojo.EmployeesInfo;
import com.qdu.service.EmployeesInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author zk
 */
@Controller

public class IndexController {
    
    @Autowired
    private EmployeesInfoService employeesInfoService;
    
     @RequestMapping("/")
    public String navigation(){
        return "navigation";
    }
    
    
    @RequestMapping("login")
    public String login(){
        return "login";
    }
    
    
    @RequestMapping("index")
    public String index(){
        
        
    
     return "index";
    
    }
    
    @RequestMapping("adminLogin")
    public String adminLogin(){
        
        
    
     return "adminLogin";
    
    }
    
    
   @RequestMapping("/indexPart")
    public String indexPart(){
        
        
    
     return "indexPart";
    
    }
        
    
}
