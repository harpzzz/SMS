/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.service;

import com.harpz.pms.model.MUser;

/**
 *
 * @author Neha Thakur
 */
public interface UserService {
     
    MUser getUserDetailByEmailPassword(String email,String password);
}
