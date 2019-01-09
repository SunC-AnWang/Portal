/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Areas;
import com.qdu.service.AreasService;
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
@RequestMapping("/areas")
public class AreasController {
    
    
     @Autowired
    private AreasService areasService;
    
    @RequestMapping("/showAllAreas")
    private String showAllAreas(Model model){
      
        model.addAttribute("areasList",areasService.getAreasList());
        return "areasList";
    }//显示全部部门信息表单
    
    
    @RequestMapping("/toAddAreas")
    public String toAddAreas(){
        return "addAreas"; // 跳转到addAreas页面
    }
    
    @RequestMapping("/addAreas")
    public String addAreas(Areas newAreas,Model model){
        areasService.add(newAreas);
        model.addAttribute("areasList",areasService.getAreasList());
        return "areasList"; 
    }
    
     @RequestMapping("/deleteAreas")
     @ResponseBody
    public void deleteAreas(int rid){
        areasService.delete(rid);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditAreas")
    public String toEditAreas(int rid,Model model){
       Areas r=areasService.getAreasById(rid);
        model.addAttribute("r", r);
        return "editAreas"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editAreas")
    public String editAreas(Areas updatedAreas,Model model){
       
        areasService.update(updatedAreas);
        model.addAttribute("areasList",areasService.getAreasList());
        return "areasList";//修改员工个人信息
    }
}
