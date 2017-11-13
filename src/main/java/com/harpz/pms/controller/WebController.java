/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.controller;


import com.harpz.pms.daoImpl.UserDaoImpl;
import com.harpz.pms.model.MUser;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
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
/**
 *
 * @author Neha Thakur
 */

@Controller
@SessionAttributes("userSession")
@RequestMapping("/dashboard")
public class WebController {
   
    
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
                              @RequestParam("file-upload") MultipartFile groupImage){
    
        
       if (!groupImage.isEmpty()) {
			try {
				byte[] bytes = groupImage.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("com.pms");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + 1);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				LOGGER.info("Server File Location="
						+ serverFile.getAbsolutePath());
                                
                                
                                

				return "created";
			} catch (Exception e) {
				return "error => " + e.getMessage();
			}
		} else {
			return "error because the file was empty.";
		}
       
    
      
    }
    
    
    
    
     @RequestMapping(value = "/manageEvents", method = RequestMethod.GET)
    public String manageEvents(){
    
        return "events-listing";
    }
}
