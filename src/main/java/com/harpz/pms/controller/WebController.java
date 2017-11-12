/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.controller;


import com.harpz.pms.daoImpl.UserDaoImpl;
import com.harpz.pms.model.MUser;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 *
 * @author Neha Thakur
 */

@Controller
public class WebController {
    
    
   @Autowired
   UserDaoImpl userDAO;
    
   @RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
    public String login() {
     
        return "index";
    }  
    
    
    @RequestMapping(value= "/loginchk", method = RequestMethod.POST)
    @ResponseBody
    public String loginChk(@RequestParam("email") String email,@RequestParam("password") String password){
    
       
        
 //      MUser  muser = userDAO.getUserDetailByEmailPassword(email, password);
        
      //  return muser.toString();
        
         return "yes";
    
    }
    
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard(){
    
        return "dashboard";
    }
      
    @RequestMapping(value = "/manageGroup", method = RequestMethod.GET)
    public String manageGroup(){
    
        return "groups-listing";
    }
    
     @RequestMapping(value = "/manageEvents", method = RequestMethod.GET)
    public String manageEvents(){
    
        return "events-listing";
    }
}
