
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductFacade {

    public List<Product> searchProductByName(String proName) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Product WHERE proName LIKE ? ");
        stm.setString(1, "%" + proName + "%");

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
            product.setCategoryId(rs.getInt("categoryId"));
            
            product.setDescription(rs.getString("description"));
            proList.add(product);

        }

        //trả list Product
        return proList;
    }

    public List<Product> searchProductByFilter(String categoryName, String status, double priceLower, double priceUpper, String sort) throws SQLException {
        List<Product> proList = null;
       Connection con = DBContext.getConnection();

        String str = String.format("SELECT * FROM Product WHERE CategoryId in (SELECT CategoryId FROM Category Where CategoryName like '%%%s%%') AND Price >= %f AND Price <= %f  ORDER BY %s ", categoryName, priceLower, priceUpper, sort);
        Statement stm = con.createStatement();

        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery(str);
        proList = new ArrayList<>();

        while (rs.next()) {

            Product product = new Product();
            product.setProId(rs.getInt("ProID"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getInt("categoryId"));
           
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
            product.setCategoryId(rs.getInt("categoryId"));
           
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
            product.setCategoryId(rs.getInt("categoryId"));
            product.setDescription(rs.getString("description"));
        }
        con.close();
        return product;
    }
    //admin:
    public List<Product> select() throws SQLException {
        List<Product> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        Statement stm = con.createStatement();
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("select * from Product");
        list = new ArrayList<>();
        while (rs.next()) {
            //Doc mau tin hien hanh de vao doi tuong toy
            Product product = new Product();
            product.setProId(rs.getInt("proId"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("amount"));
            product.setCategoryId(rs.getInt("categoryId"));
            product.setDescription(rs.getString("description"));
            //Them toy vao list
            list.add(product);
        }
        con.close();
        return list;
    }
    
    public void create(Product product) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("INSERT INTO Product VALUES(?,?,?,?,?,?)");
        //Cung cấp giá trị cho các tham số
        stm.setString(1, product.getProName());
        stm.setDouble(2, product.getPrice());
        stm.setDouble(3, product.getDiscount()* 0.01);
        stm.setInt(4, product.getAmount());
        stm.setInt(5, product.getCategoryId());
        stm.setString(6, product.getDescription());
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();
        con.close();
    }
    
    public Product select(int proId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Product WHERE proId = ? ");
        stm.setInt(1, proId);
        ResultSet rs = stm.executeQuery();
        Product product = new Product();
        if (rs.next()) {
            System.out.println("get prop");
            product.setProId(rs.getInt("ProId"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getInt("categoryId"));
            product.setDescription(rs.getString("description"));
        }
        con.close();
        return product;
    }
    
    public void update(Product product) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Product set ProName=?, Price=?, Discount=?, amount =?, CategoryID =?, Description=? where ProID = ?");
        //Cung cấp giá trị cho các tham số
        stm.setString(1, product.getProName());
        stm.setDouble(2, product.getPrice());
        stm.setDouble(3, product.getDiscount()* 0.01);
        stm.setInt(4, product.getAmount());
        stm.setInt(5, product.getCategoryId());
        stm.setString(6, product.getDescription());
        stm.setInt(7, product.getProId());
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();
        con.close();
    } 
    
    public void delete(int proId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("DELETE Product where proId = ?");
        stm.setInt(1, proId);
        //Thực thi lệnh delete
        int count = stm.executeUpdate();
        con.close();
    } 
    
        public List<Product> searchProductByFilterForAdmin(String categoryName, String status, String sort) throws SQLException {
        List<Product> proList = null;
       Connection con = DBContext.getConnection();

        String str = String.format("SELECT * FROM Product WHERE CategoryId in (SELECT CategoryId FROM Category Where CategoryName like '%%%s%%') AND Amount %s  ORDER BY %s ", categoryName, status, sort);
        Statement stm = con.createStatement();

        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery(str);
        proList = new ArrayList<>();

        while (rs.next()) {

            Product product = new Product();
            product.setProId(rs.getInt("ProID"));
            product.setProName(rs.getString("proName"));
            product.setPrice(rs.getDouble("price"));
            product.setDiscount(rs.getDouble("discount"));
            product.setAmount(rs.getInt("Amount"));
            product.setCategoryId(rs.getInt("categoryId"));
           
            product.setDescription(rs.getString("description"));
            proList.add(product);

        }

        //trả list Product
        return proList;
    }
    
    public int getProIdForUpload() throws SQLException{
        int proId = 0;
        Connection con = DBContext.getConnection();
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery("SELECT ProID FROM Product Where ProID >= ALL(SELECT ProID FROM Product)");
        if (rs.next()) {
            proId = rs.getInt("proId") + 1;           
        }
        con.close();
        return proId;
        
    }

}
