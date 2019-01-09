/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.WorkBillInfo;
import com.qdu.service.WorkBillInfoService;
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
@RequestMapping("/workBillInfo")
public class WorkBillInfoController {
    
    
     @Autowired
    private WorkBillInfoService workBillInfoService;
    
    @RequestMapping("/showAllWorkBillInfo")
    private String showAllWorkBillInfo(Model model){
      
        model.addAttribute("workBillInfoList",workBillInfoService.getWorkBillInfoList());
        return "workBillInfoList";
    }//显示全部部门信息表单
    
    
    @RequestMapping("/toAddWorkBillInfo")
    public String toAddWorkBillInfo(){
        return "addWorkBillInfo"; // 跳转到addWorkBillInfo页面
    }
    
    @RequestMapping("/addWorkBillInfo")
    public String addWorkBillInfo(WorkBillInfo newWorkBillInfo,Model model){
        workBillInfoService.add(newWorkBillInfo);
        model.addAttribute("workBillInfoList",workBillInfoService.getWorkBillInfoList());
        return "workBillInfoList"; 
    }
    
     @RequestMapping("/deleteWorkBillInfo")
     @ResponseBody
    public void deleteWorkBillInfo(int wid){
        workBillInfoService.delete(wid);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditWorkBillInfo")
    public String toEditWorkBillInfo(int wid,Model model){
       WorkBillInfo w=workBillInfoService.getWorkBillInfoById(wid);
        model.addAttribute("w", w);
        return "editWorkBillInfo"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editWorkBillInfo")
    public String editWorkBillInfo(WorkBillInfo updatedWorkBillInfo,Model model){
       
        workBillInfoService.update(updatedWorkBillInfo);
        model.addAttribute("workBillInfoList",workBillInfoService.getWorkBillInfoList());
        return "workBillInfoList";//修改员工个人信息
    }
}
