/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Saff;
import com.qdu.service.SaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author zk
 */
@Controller
@RequestMapping("/saff")
public class SaffController {
    
    
     @Autowired
    private SaffService saffService;
    
    @RequestMapping("/showAllSaff")
    private String showAllSaff(Model model){
      
        model.addAttribute("saffList",saffService.getSaffList());
        return "saffList";
    }//显示全部部门信息表单
    
    
    @RequestMapping("/toAddSaff")
    public String toAddSaff(){
        return "addSaff"; // 跳转到addSaff页面
    }
    
    @RequestMapping("/addSaff")
    public String addSaff(Saff newSaff,Model model){
        saffService.add(newSaff);
        model.addAttribute("saffList",saffService.getSaffList());
        return "saffList"; 
    }
    
     @RequestMapping("/deleteSaff")
     @ResponseBody
    public void deleteSaff(int sid){
        saffService.delete(sid);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditSaff")
    public String toEditSaff(int sid,Model model){
       Saff s=saffService.getSaffById(sid);
        model.addAttribute("s", s);
        return "editSaff"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editSaff")
    public String editSaff(Saff updatedSaff,Model model){
       
        saffService.update(updatedSaff);
        model.addAttribute("saffList",saffService.getSaffList());
        return "saffList";//修改员工个人信息
    }
}
    