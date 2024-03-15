/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Map;

public class OrderRecords {
    private int ordId;
    private int accid;
    private  String fullName;
    private String phone, address;
    private Map<Integer, Cart> cartLogs;

    public int getOrdId() {
        return ordId;
    }

    public int getAccid() {
        return accid;
    }

    public String getFullName() {
        return fullName;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public Map<Integer, Cart> getCartLogs() {
        return cartLogs;
    }

    public void setOrdId(int ordId) {
        this.ordId = ordId;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCartLogs(Map<Integer, Cart> cartLogs) {
        this.cartLogs = cartLogs;
    }
    
    
}
