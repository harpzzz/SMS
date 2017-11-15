/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.service;

import com.harpz.pms.dao.GroupDAO;
import com.harpz.pms.model.MGroupdtl;
import java.util.ArrayList;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Neha Thakur
 */
@Service("groupService")
public class GroupServiceImpl implements GroupService {
    
    
    @Autowired
    GroupDAO groupDao;
    
        @Override
      public int createGroup(int uId, String groupName, String groupDescription, String gImage){
      
         
          return groupDao.createGroup(uId, groupName, groupDescription, gImage);
      
      }

    @Override
    public ArrayList<MGroupdtl> getGroupList(int uId) {
     
        return groupDao.getGroupList(uId);
    }

   
}
