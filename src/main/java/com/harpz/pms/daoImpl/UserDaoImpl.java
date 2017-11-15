/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.daoImpl;

import com.harpz.pms.dao.UserDAO;
import com.harpz.pms.model.MUser;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Neha Thakur
 */
@Repository("userDao")
public class UserDaoImpl implements UserDAO{

    
  @Autowired
  private SessionFactory sessionFactory;
	
	
    
 
 
   protected Session getCurrentSession(){
      return sessionFactory.openSession();
   }
   
    
    @Override
    public MUser getUserDetailByEmailPassword(String email, String password) {
        
        
             String hql = "FROM MUser E where E.uEmail = :email AND E.uPassword = :password";
                Query query = getCurrentSession().createQuery(hql);
                query.setParameter("email", email);
                query.setParameter("password", password);

                MUser muser = (MUser) query.uniqueResult();
          
         
   //    MUser muser =  (MUser) getCurrentSession().get(MUser.class, 1);
                return muser;
    }


    
}
