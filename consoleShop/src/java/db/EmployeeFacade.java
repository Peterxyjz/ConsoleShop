/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 *
 * @author ASUS
 */
public class EmployeeFacade {

    public void updateEmployee(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set fullName=?, username=?,  birthDay=?, address=?, country=?, phoneNumber=?, role = ? where accId=?");
        stm.setString(1, account.getFullName());
        stm.setString(2, account.getUsername());
//        stm.setString(3, account.getEmail());
//        stm.setString(4, Hasher.hash(account.getPassword()));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(3, sdf.format(account.getBirthDay()));
        stm.setString(4, account.getAddress());
        stm.setString(5, account.getCountry());
        stm.setString(6, account.getPhoneNumber());
        stm.setString(7, account.getRole());
        stm.setInt(8, account.getAccId());

        int count = stm.executeUpdate();
        con.close();
    }
       public void deleteEmployee(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("delete account where accId=?");
        stm.setInt(1, accId);
        int count = stm.executeUpdate();
        con.close();
    }

}


