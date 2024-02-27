/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;

/**
 *
 * @author ASUS
 */
public class Customer extends Account {
    
    int cusId, accId;

    public Customer(int cusId, int accId) {
        this.cusId = cusId;
        this.accId = accId;
    }

    public int getCusId() {
        return cusId;
    }

    public void setCusId(int cusId) {
        this.cusId = cusId;
    }
    
    public Customer() {
    }

    @Override
    public void setBirthDay(Date birthDay) {
        super.setBirthDay(birthDay); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Date getBirthDay() {
        return super.getBirthDay(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setPhoneNumber(String phoneNumber) {
        super.setPhoneNumber(phoneNumber); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getPhoneNumber() {
        return super.getPhoneNumber(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setRole(String role) {
        super.setRole(role); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getRole() {
        return super.getRole(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setAddress(String address) {
        super.setAddress(address); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getAddress() {
        return super.getAddress(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setCountry(String country) {
        super.setCountry(country); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getCountry() {
        return super.getCountry(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setLastName(String lastName) {
        super.setLastName(lastName); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getLastName() {
        return super.getLastName(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setFirstName(String firstName) {
        super.setFirstName(firstName); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getFirstName() {
        return super.getFirstName(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setPassword(String password) {
        super.setPassword(password); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getPassword() {
        return super.getPassword(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setEmail(String email) {
        super.setEmail(email); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getEmail() {
        return super.getEmail(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setAccId(int accId) {
        super.setAccId(accId); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getAccId() {
        return super.getAccId(); //To change body of generated methods, choose Tools | Templates.
    }
    
}
