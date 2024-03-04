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
import models.Filter;

/**
 *
 * @author QUOC PHONG
 */
public class FilterFacade {

    public Filter selectProductById() throws SQLException {
        Filter filter = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        Statement stm = con.createStatement();
               //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("SELECT categoryName FROM Category");
        
        //categoryList
        while (rs.next()) {      
            String category = rs.getString("categoryName");
            filter.getCategoryList().put(category, category);
        }
        
       
        
        con.close();
       return  filter;
    }

}
