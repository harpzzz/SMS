/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.dao;

import com.harpz.pms.model.MGroupdtl;
import java.util.ArrayList;
import java.util.Set;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Neha Thakur
 */
@Repository
public interface GroupDAO {
    
    
     public int createGroup(int uId, String groupName, String groupDescription,String gImage);
    
     public ArrayList<MGroupdtl> getGroupList(int uId);
    
}
