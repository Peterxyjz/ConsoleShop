package db;

import hashing.Hasher;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AccountFacade {

    public List<Account> getEmployeeList() throws SQLException {
        Connection con = DBContext.getConnection();
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from account where role = 'employee'");

        List<Account> empList = new ArrayList<>();

        while (rs.next()) {

            try {
                Account account = new Account();
                account.setAccId(rs.getInt("accId"));
                account.setFullName(rs.getString("fullName"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                account.setRole(rs.getString("role"));
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                account.setBirthDay(sdf.parse("22-11-2004"));
                account.setAddress(rs.getString("address"));
                account.setCountry(rs.getString("country"));
                account.setPhoneNumber(rs.getString("phoneNumber"));
                account.setWallet(rs.getDouble("wallet"));
                empList.add(account);
            } catch (ParseException ex) {
                Logger.getLogger(AccountFacade.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        con.close();

        return empList;
    }

    public List<Account> showAllAccount() throws SQLException {
        Connection con = DBContext.getConnection();
        Statement stm = con.createStatement();

        ResultSet rs = stm.executeQuery("select * from account");

        List<Account> list = new ArrayList<>();

        while (rs.next()) {

            try {
                Account account = new Account();
                account.setAccId(rs.getInt("accId"));
                account.setFullName(rs.getString("fullName"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                account.setRole(rs.getString("role"));
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                account.setBirthDay(sdf.parse("22-11-2004"));
                account.setAddress(rs.getString("address"));
                account.setCountry(rs.getString("country"));
                account.setPhoneNumber(rs.getString("phoneNumber"));
                account.setWallet(rs.getDouble("wallet"));

                list.add(account);
            } catch (ParseException ex) {
                Logger.getLogger(AccountFacade.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        con.close();

        return list;
    }

    public Account select(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from Account where accId=?");
        stm.setInt(1, accId);
        ResultSet rs = stm.executeQuery();
        Account account = null;

        if (rs.next()) {
            account = new Account();
            account.setAccId(rs.getInt("accId"));
            account.setFullName(rs.getString("fullName"));
            account.setUsername(rs.getString("username"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setRole(rs.getString("role"));
            account.setBirthDay(rs.getDate("birthDay"));
            account.setAddress(rs.getString("address"));
            account.setCountry(rs.getString("country"));
            account.setPhoneNumber(rs.getString("phoneNumber"));
            account.setWallet(rs.getDouble("wallet"));
        }
        con.close();
        return account;
    }

    public Account select(String email) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from Account where email=?");
        stm.setString(1, email);
        ResultSet rs = stm.executeQuery();
        Account account = null;

        while (rs.next()) {
            account = new Account();
            account.setAccId(rs.getInt("accId"));
            account.setFullName(rs.getString("fullName"));
            account.setUsername(rs.getString("username"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setRole(rs.getString("role"));
            account.setBirthDay(rs.getDate("birthDay"));
            account.setAddress(rs.getString("address"));
            account.setCountry(rs.getString("country"));
            account.setPhoneNumber(rs.getString("phoneNumber"));
            account.setWallet(rs.getDouble("wallet"));
        }
        con.close();
        return account;
    }

    public void create(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("insert into Account values(?,?,?,?,?,?,?,?,?,?)");
        stm.setString(1, account.getFullName());
        stm.setString(2, account.getUsername());
        stm.setString(3, account.getEmail());
        stm.setString(4, Hasher.hash(account.getPassword()));
        stm.setString(5, "customer");
        stm.setString(6, "2000/11/11");
        stm.setString(7, account.getAddress());
        stm.setString(8, account.getCountry());
        stm.setString(9, account.getPhoneNumber());
        stm.setDouble(10, 0.00);

        int count = stm.executeUpdate();
        con.close();
    }

    public void update(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set fullName=?, username=?,  birthDay=?, address=?, country=?, phoneNumber=?, role=? where accId=?");
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

    public void update_password(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set password=? where accId=?");
        stm.setString(1, Hasher.hash(account.getPassword()));
        System.out.println("" + Hasher.hash(account.getPassword()));
        stm.setInt(2, account.getAccId());
        int count = stm.executeUpdate();
        con.close();
    }

    public void delete(int accId) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("delete account where accId=?");
        stm.setInt(1, accId);
        int count = stm.executeUpdate();
        con.close();
    }

    public Account login(String email, String password) throws SQLException, NoSuchAlgorithmException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from Account where email=? and password=?");
        //Cung cấp giá trị cho các tham số
        stm.setString(1, email);
        String hashed_password = Hasher.hash(password);
        stm.setString(2, hashed_password);
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery();
        Account account = null;
        if (rs.next()) {
            account = new Account();
            //Doc mau tin hien hanh de vao doi tuong account           
            account.setAccId(rs.getInt("accId"));
            account.setFullName(rs.getString("fullName"));
            account.setUsername(rs.getString("username"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setRole(rs.getString("role"));
            account.setBirthDay(rs.getDate("birthDay"));
            account.setAddress(rs.getString("address"));
            account.setCountry(rs.getString("country"));
            account.setPhoneNumber(rs.getString("phoneNumber"));
            account.setWallet(rs.getDouble("wallet"));
        }
        con.close();
        return account;
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lay tham chieu cua session
        HttpSession session = request.getSession();
        //huy session
        session.invalidate();
        //quay ve trang home
        request.getRequestDispatcher("/").forward(request, response);
    }

    public boolean isExisted(String email) throws SQLException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from account where email=?");
        stm.setString(1, email);
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            con.close();
            return true;
        } else {
            con.close();
            return false;
        }
    }

    public void updateInformation(Account account) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("update Account set Address =?, fullName =?, phoneNumber =? where accId=?");
        stm.setString(1, account.getAddress());
        stm.setString(2, account.getFullName());
        stm.setString(3, account.getPhoneNumber());
        stm.setInt(4, account.getAccId());

        int count = stm.executeUpdate();
        con.close();

    }

//    public boolean isAdmin(String email) throws SQLException {
//        Connection con = DBContext.getConnection();
//        PreparedStatement stm = con.prepareStatement("select * from account where email=?");
//        stm.setString(1, email);
//        ResultSet rs = stm.executeQuery();
//        Account account = new Account();
//        account.setRole(rs.getString("role"));
//        if (account.getRole().equals("admin")) {
//            con.close();
//            return true;
//        } else {
//            con.close();
//            return false;
//        }
//    }
    public void update_wallet(double money, int accId) throws SQLException, NoSuchAlgorithmException {
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("UPDATE Account SET Wallet = ? WHERE AccID = ?");
        stm.setDouble(1, money);
        stm.setInt(2, accId);
        int count = stm.executeUpdate();
        con.close();
    }

    public void changeRoleToEmployee(int accId) {
        try {
            Connection con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            PreparedStatement stm = con.prepareStatement("UPDATE [dbo].[Account] SET [Role] = 'employee' WHERE AccID = ?");
            //Cung cấp giá trị cho các tham số
            stm.setInt(1, accId);

            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AccountFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addAccountToEmployee(int accId, String position) {
        try {
            Connection con = DBContext.getConnection();
            //Tạo đối tượng PreparedStatement
            PreparedStatement stm = con.prepareStatement("INSERT INTO [dbo].[Employee]\n"
                    + "           ([Position]\n"
                    + "           ,[AccID])\n"
                    + "     VALUES\n"
                    + "           (? \n"
                    + "           ,(select accId from Account where AccID = ?))");
            //Cung cấp giá trị cho các tham số
            stm.setString(1, position);
            stm.setInt(2, accId);

            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AccountFacade.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static boolean isValidPassword(String password) {
        // Kiểm tra độ dài của mật khẩu
        if (password.length() < 3 || password.length() > 10) {
            return false;
        }

        // Kiểm tra mật khẩu chứa ít nhất một ký tự và một số
        boolean containsLetter = false;
        boolean containsDigit = false;
        for (char c : password.toCharArray()) {
            if (Character.isLetter(c)) {
                containsLetter = true;
            } else if (Character.isDigit(c)) {
                containsDigit = true;
            }
        }
        if (!containsLetter || !containsDigit) {
            return false;
        }

        return true;
    }
}
