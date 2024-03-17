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

}
