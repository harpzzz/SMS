/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.dao;

import com.harpz.pms.model.MUser;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Neha Thakur
 */
@Repository
public interface UserDAO {

    public MUser getUserDetailByEmailPassword(String email,String password);
    
}
