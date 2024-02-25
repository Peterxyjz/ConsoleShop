/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;


import hashing.Hasher;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Account;

/**
 *
 * @author ASUS
 */
public class AccountFacade {

    public Account select(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from Account where accId=?");
        stm.setInt(1, accId);
        ResultSet rs = stm.executeQuery();
        Account account = new Account();

        while (rs.next()) {
            account.setAccId(rs.getInt("accId"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setFirstName(rs.getString("firstName"));
            account.setLastName(rs.getString("lastName"));
            account.setCountry(rs.getString("country"));
            account.setPhoneNumber(rs.getString("phoneNumber"));
            account.setBirthDay(rs.getDate("birthDay"));
        }
        con.close();
        return account;
    }

    public void create(Account account) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("insert into Account values(?,?,?,?,?,?,?,?)");
        stm.setInt(1, account.getAccId());
        stm.setString(2, account.getEmail());
        stm.setString(3, account.getPassword());
        stm.setString(4, account.getFirstName());
        stm.setString(5, account.getLastName());
        stm.setString(6, account.getCountry());
        stm.setString(7, account.getPhoneNumber());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(8, sdf.format(account.getBirthDay()));

        int count = stm.executeUpdate();
        con.close();
    }

    public void update(Account account) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set email=?, password=?, firstname=?, lastname=?, country=?, phonenumber=?, birthday=? where accId=?");
        stm.setString(1, account.getEmail());
        stm.setString(2, account.getPassword());
        stm.setString(3, account.getFirstName());
        stm.setString(4, account.getLastName());
        stm.setString(5, account.getCountry());
        stm.setString(6, account.getPhoneNumber());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(7, sdf.format(account.getBirthDay()));
        stm.setInt(8, account.getAccId());

        int count = stm.executeUpdate();
        con.close();
    }

    public void delete(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("delete account where accId=?");
        stm.setInt(1, accId);
        int count = stm.executeUpdate();
        con.close();
    }

    public Account login(String email, String password) throws SQLException, NoSuchAlgorithmException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from Account where email=? and password=?");
        //Cung cấp giá trị cho các tham số
        stm.setString(1, email);
        stm.setString(2, Hasher.hash(password));
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();
        Account account = null;
        if (rs.next()) {
            account = new Account();
            //Doc mau tin hien hanh de vao doi tuong toy            
            account.setAccId(rs.getInt("accId"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setFirstName(rs.getString("firstName"));
            account.setLastName(rs.getString("lastName"));
            account.setCountry(rs.getString("country"));
            account.setPhoneNumber(rs.getString("phoneNumber"));
            account.setBirthDay(rs.getDate("birthDay"));
        }
        con.close();
        return account;
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lay tham chieu cua session
        HttpSession session = request.getSession();
        //huy session
        session.invalidate();
        //quay ve trang home
        request.getRequestDispatcher("/").forward(request, response);
    }
}