package com.qdu.controller;


import com.qdu.pojo.EmployeesInfo;
import com.qdu.service.EmployeesInfoService;
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
@RequestMapping("/employeesInfo")
public class EmployeesInfoController {
    
    @Autowired
    private EmployeesInfoService employeesInfoService;
    
    @RequestMapping("/showAllEmployeesInfo")
    private String showAllEmployeesInfo(Model model){
      
        model.addAttribute("employeesInfoList",employeesInfoService.getEmployeesInfoList());
        return "employeesInfoList";
    }//显示全部员工信息表单
    
    @RequestMapping("/toAddEmployeesInfo")
    public String toAddEmployeesInfo(){
        return "addEmployeesInfo"; // 跳转到addEmployeesInfo页面
    }
    
    
    @RequestMapping("/addEmployeesInfo")
    public String addEmployeesInfo(EmployeesInfo newEmployeesInfo,Model model){
        employeesInfoService.add(newEmployeesInfo);
        model.addAttribute("employeesInfoList",employeesInfoService.getEmployeesInfoList());
        return "employeesInfoList"; 
    }
    
    
    @RequestMapping("/deleteEmployeesInfo")
    @ResponseBody
    public void deleteEmployeesInfo(int eid){
        employeesInfoService.delete(eid);
        
    }
    
     @RequestMapping("/viewEmployeesInfo")
    public String viewEmployeesInfo(int eid,Model model){
        EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);     
        model.addAttribute("e", e);
        return "employeesInfoFind"; 
    }//根据员工编号查看个人信息
    
    @RequestMapping("/toEditEmployeesInfo")
    public String toEditEmployeesInfo(int eid,Model model){
       EmployeesInfo e=employeesInfoService.getEmployeesInfoById(eid);
        model.addAttribute("e", e);
        return "editEmployeesInfo"; //跳转到editEmployeesInfo页面编辑产品
    }
    @RequestMapping("/editEmployeesInfo")
    public String editEmployeesInfo(EmployeesInfo updatedEmployeesInfo,Model model){
       
        employeesInfoService.update(updatedEmployeesInfo);
        
        
        model.addAttribute("employeesInfoList",employeesInfoService.getEmployeesInfoList());
        return "indexPart";//修改员工个人信息
    }
    
    
}
