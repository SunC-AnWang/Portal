/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Admin;
import com.qdu.service.AdminService;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author zk
 */
@Controller
@RequestMapping("/login")
public class AdminLoginController {
    
    @Autowired
     private AdminService adminService;
    
    @RequestMapping(value="/adminLogin",method = RequestMethod.POST)
    public String adminLogin(int id,String pwd,String remember ,Model model ,HttpServletRequest request,HttpSession session,HttpServletResponse resp){
      String incode = (String)request.getParameter("code");   
      String rightcode = (String)session.getAttribute("rCode");   
      
    if(incode != null && rightcode != null){  
        
         Admin admin=adminService.validateAdmin(id,pwd);
        
        if(incode.equals(rightcode)){  
          
        if(null==admin){
            return "adminLogin";
        }
        else{
            model.addAttribute("admin",admin);
              String uname = request.getParameter("id");
             String upwd = request.getParameter("pwd");

        //创建Cookie，使用Cookie类
        //Cookie以键-值对的形式存放数据，键名和键值，后期根据名获取值
        Cookie c1 = new Cookie("eid", uname);
        Cookie c2 = new Cookie("epwd", pwd);

        //需要将Cookie添加到响应对象，随响应发送到客户端
        //只有加到响应对象中，Cookie才会被发到客户端
        //默认一个Cookie的存活多久，默认一个Cookie是一个会话Cookie，存储于浏览器内存中
        //浏览器关闭的时候直接删除
        //参数给
        //正值：表示Cookie多久后过期，单位为秒
        //负值：表示是一个会话Cookie，浏览器关闭，自动删除Cookie
        //0： 立刻删除Cookie，这就是删除Cookie的方式
        String remember1 = request.getParameter("remember");
        if ("Y".equals(remember1)) { //如果用户勾选了记住密码
            c1.setMaxAge(7 * 24 * 60 * 60);
            c2.setMaxAge(7 * 24 * 60 * 60);
        }else{ //
            c1.setMaxAge(0);
            c2.setMaxAge(0);
        }

        resp.addCookie(c1);
        resp.addCookie(c2);

       
    
            return "adminIndex";
        }
        }
       else{  
          return "adminLogin";
        }  
     
       
    }
    else 
        return "adminLogin";
     
    
    }
   
    
}
   