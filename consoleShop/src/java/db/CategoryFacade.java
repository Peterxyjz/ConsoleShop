package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryFacade {
    public List<Category> select() throws SQLException {
        List<Category> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        Statement stm = con.createStatement();
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("select * from Category");
        list = new ArrayList<>();
        while (rs.next()) {
            //Doc mau tin hien hanh de vao doi tuong brand
            Category category = new Category();
            category.setCategoryID(rs.getInt("categoryId"));
            category.setCategoryName(rs.getString("categoryName"));
            //Them category vao list
            list.add(category);
        }
        con.close();
        return list;
    } 
}
