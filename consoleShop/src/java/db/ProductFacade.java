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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ProductFacade {
     public List<Product> searchProductByName(String proName) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Product WHERE proName LIKE ? ");
        stm.setString(1, "%" +proName +"%");

        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();

        List<Product> proList = new ArrayList<>();

        while (rs.next()) {
            Product product = new Product();
            product.setProId(rs.getInt("ProID"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getString("categoryId"));
            product.setBrandId(rs.getString("brandId"));
            product.setDescription(rs.getString("description"));
            proList.add(product);

        }

        //trả list Product
        return proList;
    }

    public List<Product> selectProList() throws SQLException {
        List<Product> list = null;
        Connection con = DBContext.getConnection();
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("SELECT * FROM Product");

        list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProId(rs.getInt("ProID"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getString("categoryId"));
            product.setBrandId(rs.getString("brandId"));
            product.setDescription(rs.getString("description"));

            list.add(product);
        }
        con.close();
        return list;
    }

    public Product selectProductById(int id) throws SQLException {
        Product product = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from Product WHERE id = ?");
        stm.setInt(1, id);
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();

        if (rs.next()) {

            product = new Product();
            product.setProId(rs.getInt("ProID"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
             product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getString("categoryId"));
            product.setBrandId(rs.getString("brandId"));
            product.setDescription(rs.getString("description"));

        }
        con.close();
        return product;
    }

}
