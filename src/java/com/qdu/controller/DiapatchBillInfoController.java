package com.qdu.controller;


import com.qdu.pojo.DiapatchBillInfo;
import com.qdu.service.DiapatchBillInfoService;
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
@RequestMapping("/diapatchBillInfo")
public class DiapatchBillInfoController {
    
    @Autowired
    private DiapatchBillInfoService diapatchBillInfoService;
    
   
    
    @RequestMapping("/showAllDiapatchBillInfo")
    private String showAllDiapatchBillInfo(Model model){
      
        model.addAttribute("diapatchBillInfoList",diapatchBillInfoService.getDiapatchBillInfoList());
        return "diapatchBillInfoList";
    }//显示全部员工信息表单
    
    @RequestMapping("/toAddDiapatchBillInfo")
    public String toAddDiapatchBillInfo(){
        return "addDiapatchBillInfo"; // 跳转到addDiapatchBillInfo页面
    }
    
    
    @RequestMapping("/addDiapatchBillInfo")
    public String addDiapatchBillInfo(DiapatchBillInfo newDiapatchBillInfo,Model model){
        diapatchBillInfoService.add(newDiapatchBillInfo);
        model.addAttribute("d",diapatchBillInfoService.getDiapatchBillInfoList());
        return "diapatchBillInfoList"; 
    }
    
    
    @RequestMapping("/deleteDiapatchBillInfo")
    @ResponseBody
    public void deleteDiapatchBillInfo(int did){
        diapatchBillInfoService.delete(did);
        
    }
    
     @RequestMapping("/viewDiapatchBillInfo")
    public String viewDiapatchBillInfo(int did,Model model){
        DiapatchBillInfo d =diapatchBillInfoService.getDiapatchBillInfoById(did);     
        model.addAttribute("d", d);
        return "diapatchBillInfoFind"; 
    }//根据员工编号查看个人信息
    
    @RequestMapping("/toEditDiapatchBillInfo")
    public String toEditDiapatchBillInfo(int did,Model model){
       
       DiapatchBillInfo d=diapatchBillInfoService.getDiapatchBillInfoById(did);
        model.addAttribute("d", d);
        return "editDiapatchBillInfo"; //跳转到editDiapatchBillInfo页面编辑产品
    }
    @RequestMapping("/editDiapatchBillInfo")
    public String editDiapatchBillInfo(DiapatchBillInfo updatedDiapatchBillInfo,Model model){
       
        diapatchBillInfoService.update(updatedDiapatchBillInfo);
        model.addAttribute("diapatchBillInfoList",diapatchBillInfoService.getDiapatchBillInfoList());
        return "diapatchBillInfoList";//修改员工个人信息
    }
    
    
}
