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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ProductFacade {
       public List<Product> searchProductByName(String proName) throws SQLException{
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Product WHERE proName LIKE ? ");
        stm.setString(1, proName);
        
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();
        
           List<Product> proList = new ArrayList<>();
        
        while(rs.next()){
            Product prod = new Product();
            rs.getString("proID");
            rs.getString("proName");
            rs.getFloat("price");
            rs.getString("categoryID");
            rs.getString("brandID");
            rs.getString("description");
            proList.add(prod);
            
        }
        
        //trả list Product
        return proList;
    }
}
