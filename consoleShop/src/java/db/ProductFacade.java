
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

    public List<Product> searchProductByFilter(String categoryName, String status, double priceUpper, double priceLower, String sort) throws SQLException {
        List<Product> proList = null;
        String str = String.format("SELECT * FROM Product WHERE CategoryID in (SELECT CategoryID FROM Category WHERE CategoryName like '%s') AND ((price >= %s) AND (price <=%s)) ORDER BY %s ", categoryName, priceLower, priceUpper, sort);
//        String str = "SELECT * FROM Product WHERE CategoryId in (SELECt categoryId FROM Category WHERE CategoryName like '%Nintendo%') AND Price >=0.0 AND Price <=9000000.000000 Order by ProName DESC ";
        Connection con = DBContext.getConnection();

        Statement stm = con.createStatement();

        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery(str);
        System.out.println("rs: " + rs.next());
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
        PreparedStatement stm = con.prepareStatement("insert into Product values(?,?,?,?,?,?,?)");
        //Cung cấp giá trị cho các tham số
        stm.setString(1, product.getProName());
        stm.setDouble(2, product.getPrice());
        stm.setDouble(3, product.getDiscount());
        stm.setInt(4, product.getAmount());
        stm.setInt(5, product.getCategoryId());
 
        stm.setString(7, product.getDescription());
        //Thực thi lệnh INSERT
        int count = stm.executeUpdate();
        con.close();
    }
}
