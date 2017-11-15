/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.controller;


import com.harpz.pms.daoImpl.UserDaoImpl;
import com.harpz.pms.model.MGroupdtl;
import com.harpz.pms.model.MUser;
import com.harpz.pms.service.GroupServiceImpl;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Neha Thakur
 */

@Controller
@SessionAttributes("userSession")
@RequestMapping("/dashboard")
public class WebController {
   
    
    @Autowired
    GroupServiceImpl groupServiceImpl;
    
    @Autowired
    ServletContext servletContext;
    
    private static final Logger LOGGER = Logger.getLogger(WebController.class.getName());

    
    @RequestMapping(value = "/**", method = RequestMethod.GET)
    public String dashboard(){
    
        return "dashboard";
    }
      
    @RequestMapping(value = "/manageGroup", method = RequestMethod.GET)
    public String manageGroup(){
    
        return "groups-listing";
    }
    
    @RequestMapping(value = "/createGroup",method = RequestMethod.POST)
    @ResponseBody
    public String createGroup(@RequestParam("txtGrpTitle") String groupName,
                              @RequestParam("txtGrpDesc") String groupDescription,
                              @RequestParam("file-upload") MultipartFile groupImage,
                              HttpServletRequest request){
    
        
            String latestUploadPhoto = "";
           
         
         String path = request.getSession().getServletContext().getRealPath("/resources/uImages");
        File dir = new File(path);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        
        
  
        File serverFile = new File(dir.getAbsolutePath() + File.separator + groupImage.getOriginalFilename());
        latestUploadPhoto = groupImage.getOriginalFilename();
         
    //write uploaded image to disk
        try {
            try (InputStream is = groupImage.getInputStream(); BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
                int i;
                while ((i = is.read()) != -1) {
                    stream.write(i);
                }
                stream.flush();
                
                
               int id = groupServiceImpl.createGroup(1, groupName, groupDescription, groupImage.getOriginalFilename());
                
                
               if(id != -1){
               
                   return "true";
               }else{
               
                   return "false";
               }
                
                
            }
        } catch (IOException e) {
            
            System.out.println("error : " + e.getMessage());
        }
       
        return "false";
      
        }
    
    
    
    
    @RequestMapping(value = "/manageEvents", method = RequestMethod.GET)
    public String manageEvents(){
    
        return "events-listing";
    }
    
    
    @RequestMapping(value = "/getGroupList" ,  method = RequestMethod.POST)
    @ResponseBody
    public ArrayList<MGroupdtl> getGroupList(){
    
        
        ArrayList<MGroupdtl> al = groupServiceImpl.getGroupList(1);
        
     /*   ModelAndView mv = new ModelAndView();
        
        if(al.size() > 0){
        
            mv.addObject("groupList",al);
            mv.addObject("status","true");
        
        }else{
        
            mv.addObject("status","false");
            
        }
        
       */ 
        return al;
    
    }

}
