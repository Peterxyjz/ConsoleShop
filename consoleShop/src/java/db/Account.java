/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.Date;

/**
 *
 * @author ASUS
 */
public class Account {
    private int accId;
    private String fullName, email, password, role, address, country, phoneNumber, username;
    private Date birthDay;
    private double wallet;

    public Account() {
    }

    public int getAccId() {
        return accId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public void setWallet(double wallet) {
        this.wallet = wallet;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public String getAddress() {
        return address;
    }

    public String getCountry() {
        return country;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getUsername() {
        return username;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public double getWallet() {
        return wallet;
    }

    @Override
    public String toString() {
        return "Account{" + "accId=" + accId + ", fullName=" + fullName + ", email=" + email + ", password=" + password + ", role=" + role + ", address=" + address + ", country=" + country + ", phoneNumber=" + phoneNumber + ", username=" + username + ", birthDay=" + birthDay + ", wallet=" + wallet + '}';
    }

    
}
