/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.controller;

import com.harpz.pms.daoImpl.UserDaoImpl;
import com.harpz.pms.model.MUser;
import com.harpz.pms.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Neha Thakur
 */

@Controller
public class LoginController {
    
       
   @Autowired
   UserServiceImpl userService;
           
   @RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
    public String login() {
     
        return "index";
    }  
    
    
    @RequestMapping(value= "/loginchk", method = RequestMethod.POST)
    @ResponseBody
    public String loginChk(@RequestParam("email") String email,@RequestParam("password") String password){
    
       
        
      MUser  muser = userService.getUserDetailByEmailPassword(email, password);
        
   //     return muser.toString();
   
        
        
     

        if(muser != null){
            
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.addObject("userSession",muser);
         
              return "yes";
        }
   
        return "false";
       
    
    }
    
}
