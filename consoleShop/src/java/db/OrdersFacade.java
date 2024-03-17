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
import java.util.Date;

/**
 *
 * @author ASUS
 */
public class OrdersFacade {

    public int create(String address, String country, int cusId, int empId) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO Orders VALUES(?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
        //Cung cấp giá trị cho các tham số

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(1, LocalDate.now().toString());
        stm.setString(2, LocalDate.now().plusWeeks(1).toString());
        stm.setString(3, address);
        stm.setString(4, country);
        stm.setInt(5, cusId);
        stm.setInt(6, empId);
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
    
    

}
