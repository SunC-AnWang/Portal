/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Departments;
import com.qdu.service.DepartmentsService;
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
@RequestMapping("/departments")
public class DepartmentsController {
    
    
     @Autowired
    private DepartmentsService departmentsService;
    
    @RequestMapping("/showAllDepartments")
    private String showAllDepartments(Model model){
      
        model.addAttribute("departmentsList",departmentsService.getDepartmentsList());
        return "departmentsList";
    }//显示全部部门信息表单
    
    
    @RequestMapping("/toAddDepartments")
    public String toAddDepartments(){
        return "addDepartments"; // 跳转到addDepartments页面
    }
    
    @RequestMapping("/addDepartments")
    public String addDepartments(Departments newDepartments,Model model){
        departmentsService.add(newDepartments);
        model.addAttribute("departmentsList",departmentsService.getDepartmentsList());
        return "departmentsList"; 
    }
    
     @RequestMapping("/deleteDepartments")
     @ResponseBody
    public void deleteDepartments(int deId){
        departmentsService.delete(deId);
        
    }
//    
//     @RequestMapping("/viewEmployeesInfo")
//    public String viewEmployeesInfo(int eid,Model model){
//        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
//        model.addAttribute("employeesInfoFind", e);
//        return "employeesInfoFind"; 
//    }//根据员工编号查看个人信息
    
    
     @RequestMapping("/toEditDepartments")
    public String toEditDepartments(int deId,Model model){
       Departments de=departmentsService.getDepartmentsById(deId);
        model.addAttribute("de", de);
        return "editDepartments"; //跳转到editEmployeesInfo页面编辑产品
    }
    
     @RequestMapping("/editDepartments")
    public String editDepartments(Departments updatedDepartments,Model model){
       
        departmentsService.update(updatedDepartments);
        model.addAttribute("departmentsList",departmentsService.getDepartmentsList());
        return "departmentsList";//修改员工个人信息
    }
}
