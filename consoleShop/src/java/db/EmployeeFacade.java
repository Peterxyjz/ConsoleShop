/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class EmployeeFacade {

    public void updateEmployee(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set fullName=?, username=?,  birthDay=?, address=?, country=?, phoneNumber=?, role = ? where accId=?");
        stm.setString(1, account.getFullName());
        stm.setString(2, account.getUsername());
//        stm.setString(3, account.getEmail());
//        stm.setString(4, Hasher.hash(account.getPassword()));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        stm.setString(3, sdf.format(account.getBirthDay()));
        stm.setString(4, account.getAddress());
        stm.setString(5, account.getCountry());
        stm.setString(6, account.getPhoneNumber());
        stm.setString(7, account.getRole());
        stm.setInt(8, account.getAccId());

        int count = stm.executeUpdate();
        con.close();
    }
    
    public void updateEmployeePosition(Employee emp) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Employee set position=? where accId=?");
        stm.setString(1, emp.getPosition());
        stm.setInt(2, emp.getAccId());
        int count = stm.executeUpdate();
        con.close();
    }

    public void deleteEmployee(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("delete account where accId=?");
        stm.setInt(1, accId);
        int count = stm.executeUpdate();
        con.close();
    }

    public List<Employee> selectEmployee() {
        try {
            Connection con = DBContext.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from \n"
                    + "Employee e left outer join account a \n"
                    + "on e.AccID = a.AccID where role = " + "'" + "employee" + "'");

            Employee emp = new Employee();
            List<Employee> list = new ArrayList<>();
            while (rs.next()) {
                emp.setAccId(rs.getInt("accId"));
                emp.setEmpId(rs.getInt("empId"));
                emp.setPhoneNumber(rs.getString("phoneNumber"));
                emp.setPosition(rs.getString("position"));
                emp.setRole(rs.getString("role"));
                emp.setFullName(rs.getString("fullName"));
                list.add(emp);
            }

            return list;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Employee selectEmpByAccId(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from \n"
                + "Employee e left outer join account a \n"
                + "on e.AccID = a.AccID where role = " + "'" + "employee" + "'" + "and e.accId = ?");
        stm.setInt(1, accId);
        ResultSet rs = stm.executeQuery();
        Employee emp = new Employee();

        if (rs.next()) {
            emp.setAccId(rs.getInt("accId"));
            emp.setEmpId(rs.getInt("empId"));
            emp.setPhoneNumber(rs.getString("phoneNumber"));
            emp.setPosition(rs.getString("position"));
            emp.setRole(rs.getString("role"));
            emp.setFullName(rs.getString("fullName"));
        }
        con.close();
        return emp;
    }
}
