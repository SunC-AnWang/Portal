/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.NormalBillInfo;
import com.qdu.service.NormalBillInfoService;
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
@RequestMapping("/normalBillInfo")
public class NormalBillInfoController {
    
    
     @Autowired
    private NormalBillInfoService normalBillInfoService;
    
    @RequestMapping("/showAllNormalBillInfo")
    private String showAllNormalBillInfo(Model model){
      
        model.addAttribute("normalBillInfoList",normalBillInfoService.getNormalBillInfoList());
        return "normalBillInfoList";
    }//显示全部部门信息表单
    
    
    @RequestMapping("/toAddNormalBillInfo")
    public String toAddNormalBillInfo(){
        return "addNormalBillInfo"; // 跳转到addNormalBillInfo页面
    }
    
    @RequestMapping("/addNormalBillInfo")
    public String addNormalBillInfo(NormalBillInfo newNormalBillInfo,Model model){
        normalBillInfoService.add(newNormalBillInfo);
        model.addAttribute("normalBillInfoList",normalBillInfoService.getNormalBillInfoList());
        return "normalBillInfoList"; 
    }
    
     @RequestMapping("/deleteNormalBillInfo")
     @ResponseBody
    public void deleteNormalBillInfo(int nid){
        normalBillInfoService.delete(nid);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditNormalBillInfo")
    public String toEditNormalBillInfo(int nid,Model model){
       NormalBillInfo n=normalBillInfoService.getNormalBillInfoById(nid);
        model.addAttribute("n", n);
        return "editNormalBillInfo"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editNormalBillInfo")
    public String editNormalBillInfo(NormalBillInfo updatedNormalBillInfo,Model model){
       
        normalBillInfoService.update(updatedNormalBillInfo);
        model.addAttribute("normalBillInfoList",normalBillInfoService.getNormalBillInfoList());
        return "normalBillInfoList";//修改员工个人信息
    }
}
    