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
import java.util.List;
import models.Item;

/**
 *
 * @author ASUS
 */
public class OrderDetailFacade {

    public void create(Item item, int ordId) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO OrderDetail VALUES(?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        //Cung cấp giá trị cho các tham số

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setInt(1, item.getQuantity());
        stm.setDouble(2, item.getCost());
        stm.setString(3, LocalDate.now().toString());
        stm.setInt(4, ordId);
        stm.setInt(5, item.getProduct().getProId());
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();

        con.close();

    }
    
    public List<OrderDetail> select(int ordId) throws SQLException {
        List<OrderDetail> list = null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM OrderDetail WHERE ordId = ? ");
        stm.setInt(1, ordId);
        ResultSet rs = stm.executeQuery();

        list = new ArrayList<>();
        while (rs.next()) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setDiscount(rs.getDouble("discount"));
            orderDetail.setOrdId(ordId);
            orderDetail.setOrderDate(rs.getDate("orderDate"));
            orderDetail.setPrice(rs.getDouble("price"));
            orderDetail.setProId(rs.getInt("proId"));
            orderDetail.setQuantity(rs.getInt("quantity"));
            list.add(orderDetail);
        }
        return list;
    }

}
