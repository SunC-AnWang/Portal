/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Occupations;
import com.qdu.service.OccupationsService;
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
@RequestMapping("/occupations")
public class OccupationsController {
    
    @Autowired
    private OccupationsService occupationsService;
    
    @RequestMapping("/showAllOccupations")
    private String showAllOccupations(Model model){
      
        model.addAttribute("occupationsList",occupationsService.getOccupationsList());
        return "occupationsList";
    }//显示全部职位信息表单
    
    
     @RequestMapping("/toAddOccupations")
    public String toAddOccupations(){
        return "addOccupations"; // 跳转到addOccupations页面
    }
    
    @RequestMapping("/addOccupations")
    public String addOccupations(Occupations newOccupations,Model model){
        occupationsService.add(newOccupations);
        model.addAttribute("occupationsList",occupationsService.getOccupationsList());
        return "occupationsList"; 
    }
    
     @RequestMapping("/deleteOccupations")
     @ResponseBody
    public void deleteOccupations(int oid){
        occupationsService.delete(oid);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditOccupations")
    public String toEditOccupations(int oid,Model model){
       Occupations o=occupationsService.getOccupationsById(oid);
        model.addAttribute("o", o);
        return "editOccupations"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editOccupations")
    public String editOccupations(Occupations updatedOccupations,Model model){
       
        occupationsService.update(updatedOccupations);
        model.addAttribute("occupationsList",occupationsService.getOccupationsList());
        return "occupationsList";//修改员工个人信息
    }
    
        
}
