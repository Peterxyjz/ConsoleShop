/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

/**
 *
 * @author ASUS
 */
public class OrdersFacade {
    public void create(Product product) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO Orders VALUES(?,?,?,?,?,?)");
        //Cung cấp giá trị cho các tham số
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(3, sdf.format(LocalDate.now()));
        stm.setString(1, sdf.format(LocalDate.now().plusWeeks(1)));
        stm.setDouble(2, product.getPrice());
        stm.setDouble(3, product.getDiscount()* 0.01);
        stm.setInt(4, product.getAmount());
        stm.setInt(5, product.getCategoryId());
        stm.setString(6, product.getDescription());
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();
        con.close();
    }
}
