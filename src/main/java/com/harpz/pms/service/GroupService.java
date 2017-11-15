/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.service;

import com.harpz.pms.model.MGroupdtl;
import java.util.ArrayList;
import java.util.Set;

/**
 *
 * @author Neha Thakur
 */
public interface GroupService {
        
        
    
    
            public int createGroup(int uId, String groupName, String groupDescription,String originalFilename);
    
    
             public ArrayList<MGroupdtl> getGroupList(int uId);
}
