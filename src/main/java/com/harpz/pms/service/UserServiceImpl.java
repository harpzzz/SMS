/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.service;

import com.harpz.pms.dao.UserDAO;
import com.harpz.pms.model.MUser;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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
        
        
        MUser user = userDao.getUserDetailByEmailPassword("mharpreetsingh@gmail.com", "12345678"); 
        
        
        return user;
      //  List<GrantedAuthority> authorities = buildUserAuthority();

	//return buildUserForAuthentication(user, authorities);

    }
    
  
	// org.springframework.security.core.userdetails.User
/*	private User buildUserForAuthentication(MUser user,
		List<GrantedAuthority> authorities) {
		return new User(user.getUEmail(), user.getUPassword(),
			true, true, true, true, authorities);
	}

	private List<GrantedAuthority> buildUserAuthority() {

		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

		// Build user's authorities
		//for (UserRole userRole : userRoles) {
		//	setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
		//}
               
                setAuths.add(new SimpleGrantedAuthority("admin"));
                

		List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}
*/
}
