/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class OrdersFacade {

    public int create(String address, String country, int cusId, int empId, String status, double total) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO Orders VALUES(?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        //Cung cấp giá trị cho các tham số

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(1, LocalDate.now().toString());
        stm.setString(2, LocalDate.now().plusWeeks(1).toString());
        stm.setString(3, address);
        stm.setString(4, country);
        stm.setInt(5, cusId);
        stm.setInt(6, empId);
        stm.setString(7, status);
        stm.setDouble(8, total);
        int generatedOrdId = 0;
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();
        if (count > 0) {
            ResultSet generatedKeys = stm.getGeneratedKeys();
            if (generatedKeys.next()) {
                generatedOrdId = generatedKeys.getInt(1); // Lấy giá trị của ordId được sinh tự động
                // Sử dụng giá trị generatedOrdId
                System.out.println("Generated Order ID: " + generatedOrdId);
            }
        }
        con.close();
        return generatedOrdId;
    }
    
    public List<Orders> select(int accId) throws SQLException {
        List<Orders> list = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Orders WHERE accId = ? ");
        stm.setInt(1, accId);
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();

        list = new ArrayList<>();

        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShipAddress(rs.getString("shipAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            list.add(order);
        }

        //trả list Product
        return list;
    }
    
    public Orders select(int accId, int ordId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Orders WHERE accId = ? AND ordId = ?");
        stm.setInt(1, accId);
        stm.setInt(2, ordId);
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();
        Orders order = null;
        if (rs.next()) {
            order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShipAddress(rs.getString("shipAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
        }

        //trả list Product
        return order;
    }
    
    public List<Orders> selectWaitingOrder() {
        try {
            Connection con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            Statement stm = con.createStatement();
            
            ResultSet rs = stm.executeQuery("select * from Orders where status = N'Chờ xác nhận'");
            List<Orders> orderList = new ArrayList<>();
            while(rs.next()){
                Orders ord = new Orders();
                ord.setOrdId(rs.getInt("ordId"));
                ord.setRequiredDate(rs.getDate("requiredDate"));
                ord.setShippedDate(rs.getDate("shippedDate"));
                ord.setShipAddress(rs.getString("shipAdress"));
                ord.setAccId(rs.getInt("cusId"));
                ord.setEmpId(rs.getInt("empId"));
                ord.setStatus(rs.getString("status"));
                
                orderList.add(ord);
            }
            return orderList;

            
        } catch (SQLException ex) {
            Logger.getLogger(OrdersFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public List<Orders> selectCheckedOrder() {
        try {
            Connection con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            Statement stm = con.createStatement();
            
            ResultSet rs = stm.executeQuery("select * from Orders where status = N'Đã xác nhận' order by ordId desc");
            List<Orders> orderList = new ArrayList<>();
            while(rs.next()){
                Orders ord = new Orders();
                ord.setOrdId(rs.getInt("ordId"));
                ord.setRequiredDate(rs.getDate("requiredDate"));
                ord.setShippedDate(rs.getDate("shippedDate"));
                ord.setShipAddress(rs.getString("shipAdress"));
                ord.setAccId(rs.getInt("cusId"));
                ord.setEmpId(rs.getInt("empId"));
                ord.setStatus(rs.getString("status"));
                
                orderList.add(ord);
            }
            return orderList;

            
        } catch (SQLException ex) {
            Logger.getLogger(OrdersFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void confirmOrder(int ordId) {
        try {
            Connection con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            PreparedStatement stm = con.prepareStatement("UPDATE [dbo].[Orders] SET [Status] = N'Đã xác nhận' WHERE ordId = ?");
            stm.setInt(1, ordId);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(OrdersFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
            
             
            

            
     
    }

}
