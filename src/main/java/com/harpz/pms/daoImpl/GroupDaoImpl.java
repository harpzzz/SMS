/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.daoImpl;

import com.harpz.pms.dao.GroupDAO;
import com.harpz.pms.model.MGroupdtl;
import java.util.ArrayList;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Neha Thakur
 */
@Repository("GroupDao")
public class GroupDaoImpl implements GroupDAO{
    
    
      
  @Autowired
  private SessionFactory sessionFactory;

 
   protected Session getCurrentSession(){
      return sessionFactory.openSession();
   }
     
    
    @Override
    public int createGroup(int uId, String groupName, String groupDescription,String gImage){

        
        Session session = getCurrentSession();
        
        MGroupdtl mgroup = new MGroupdtl();
        mgroup.setgName(groupName);
        mgroup.setgDescription(groupDescription);
        mgroup.setgImage(gImage);
        mgroup.setuId(uId);
        
        
        session.save(mgroup);
        
        
        session.beginTransaction().commit();
        
        return mgroup.getgId();
 
     
     }

    @Override
    public ArrayList<MGroupdtl> getGroupList(int uId) {
        
        
        Query query = getCurrentSession().createQuery("FROM MGroupdtl");
        
        
        return (ArrayList<MGroupdtl>) query.getResultList();
        
        
     
        
    }
    
    
    
}
