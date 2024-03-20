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

/**
 *
 * @author ASUS
 */
public class OrdersFacade {

    public int create(String shippAdress, int accId, String status, double total, String payment) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO Orders VALUES(?,?,?,?, ?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        //Cung cấp giá trị cho các tham số

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(1, LocalDate.now().toString());
        stm.setString(2, LocalDate.now().plusWeeks(1).toString());
        stm.setString(3, shippAdress);
        stm.setInt(4, accId);
        stm.setInt(5, 1);
        stm.setString(6, status);
        stm.setDouble(7, total);
        stm.setString(8, payment);
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

    public List<Orders> select() throws SQLException {
        List<Orders> list = null;
        Connection con = DBContext.getConnection();
        Statement stm = con.createStatement();
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("SELECT * FROM Orders");

        list = new ArrayList<>();
        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            list.add(order);
        }
        con.close();
        return list;
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
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            list.add(order);
        }
        con.close();
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
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setEmpId(rs.getInt("empId"));
            order.setPayment(rs.getString("payment"));
        }
        con.close();
        return order;
    }

    public List<Orders> selectWaitingOrder() throws SQLException {
        List<Orders> orderList = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from Orders where status = N'Chờ xác nhận'");
        orderList = new ArrayList<>();
        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            orderList.add(order);
        }
        con.close();
        return orderList;
    }

    public List<Orders> selectCheckedOrder() throws SQLException {
        List<Orders> orderList = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from Orders where status = N'Đã xác nhận' order by ordId desc");
        orderList = new ArrayList<>();
        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            orderList.add(order);
        }
        con.close();
        return orderList;
    }

    public List<Orders> selectCompletedList() throws SQLException {
        List<Orders> orderList = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from Orders where status = N'Hoàn thành' order by ordId desc");
        orderList = new ArrayList<>();
        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            orderList.add(order);
        }
        con.close();
        return orderList;
    }

    public List<Orders> selectCompletedListByDate(Date from, Date to) throws SQLException {
        List<Orders> orderList = null;
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from Orders where status = N'Hoàn thành' order by ShippedDate desc");
        orderList = new ArrayList<>();
        while (rs.next()) {
            Orders order = new Orders();
            order.setAccId(rs.getInt("accId"));
            order.setOrdId(rs.getInt("ordId"));
            order.setRequiredDate(rs.getDate("requiredDate"));
            order.setShippedDate(rs.getDate("shippedDate"));
            order.setShippAddress(rs.getString("shippAddress"));
            order.setStatus(rs.getString("status"));
            order.setTotal(rs.getDouble("total"));
            order.setPayment(rs.getString("payment"));
            if (order.getShippedDate().compareTo(from) >= 0 && order.getShippedDate().compareTo(to) <= 0) {
                orderList.add(order);
            }
        }
        con.close();
        return orderList;
    }

    public void statusComplete(int ordId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("UPDATE Orders SET Status = N'Hoàn thành' WHERE ordId = ?");
        stm.setInt(1, ordId);
        int count = stm.executeUpdate();
        con.close();
    }

    public void confirmOrder(int ordId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("UPDATE Orders SET Status = N'Đã xác nhận' WHERE ordId = ?");
        stm.setInt(1, ordId);
        int count = stm.executeUpdate();
        con.close();
    }

}
