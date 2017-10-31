/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.service;

import com.harpz.pms.dao.UserDAO;
import com.harpz.pms.model.MUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Neha Thakur
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    
    @Autowired 
    UserDAO userDao;
    
    @Override
    public MUser getUserDetailByEmailPassword(String email, String password) {
       return userDao.getUserDetailByEmailPassword("mharpreetsingh@gmail.com", "12345678");
    }
    
}
