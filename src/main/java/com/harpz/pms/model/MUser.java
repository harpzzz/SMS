/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.harpz.pms.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Neha Thakur
 */
@Entity
@Table(name="tbl_users")
public class MUser implements Serializable {
    
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    int uId;
    
    String uName;
    String uMobile;
    String uAddress;
    
    String uEmail;
    String uPassword;
    

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuMobile() {
        return uMobile;
    }

    public void setuMobile(String uMobile) {
        this.uMobile = uMobile;
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    public String getUEmail() {
        return uEmail;
    }

    public void setUEmail(String UEmail) {
        this.uEmail = UEmail;
    }

    public String getUPassword() {
        return uPassword;
    }

    public void setUPassword(String UPassword) {
        this.uPassword = UPassword;
    }
    
    
    
    
}
