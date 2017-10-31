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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    
    
    @RequestMapping(value= "/dashboard", method = RequestMethod.POST)
    public String loginChk(HttpServletRequest request,
            HttpServletResponse response, Model model){
    
       
       MUser  muser = userDAO.getUserDetailByEmailPassword(request.getParameter("email"), request.getParameter("password"));
        
      //  return muser.toString();
        
         return "dashboard";
    
    }
      
    
}
