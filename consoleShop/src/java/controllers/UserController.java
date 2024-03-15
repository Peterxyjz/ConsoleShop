/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.AccountFacade;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import db.Account;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "UserController", urlPatterns = {"/user"})
public class UserController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");

        switch (action) {
            case "profile":
                profile(request, response);
                break;
            case "profile_edit":
                profile_edit(request, response);
                break;
            case "payment":
                payment(request, response);
                break;
            case "deposit":
                deposit(request, response);
                break;
            case "deposit_handler":
                deposit_handler(request, response);
                break;
        }
    }
    protected void profile(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void profile_edit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            HttpSession session = request.getSession();
            AccountFacade af = new AccountFacade();
            String fullName = request.getParameter("fullName");
            String username = request.getParameter("username");
//            String password = request.getParameter("password");
//            String password_check = request.getParameter("password_check");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date birthDay = sdf.parse(request.getParameter("birthDay"));
            String address = request.getParameter("address");
            String country = request.getParameter("country");
            String phoneNumber = request.getParameter("phoneNumber");
            //lấy account ra
            Account account_updating = (Account) session.getAttribute("account");

//            if (password_check != "") {
//                while (!password.equals(password_check)) {
//                    request.setAttribute("errMsg1", "mật khẩu không trùng khớp");
//                    request.getRequestDispatcher("/account/update.do").forward(request, response);
//                }
//                account.setPassword(password);
//            }
            account_updating.setFullName(fullName);
            account_updating.setUsername(username);
            account_updating.setBirthDay(birthDay);
            account_updating.setAddress(address);
            account_updating.setCountry(country);
            account_updating.setPhoneNumber(phoneNumber);
            af.update(account_updating);
            //lưu lại account vào session
            session.setAttribute("account", account_updating);
            request.getRequestDispatcher("/user/profile.do").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "Something is wrong");
            request.getRequestDispatcher("/user/profile.do").forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void payment(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void deposit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void deposit_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        AccountFacade af = new AccountFacade();
        try {
            double money = Double.parseDouble(request.getParameter("money")) + Double.parseDouble(request.getParameter("wallet"));
            int accId = Integer.parseInt(request.getParameter("accId"));
            if(request.getParameter("sure") != null){
                af.update_wallet(money, accId);
            }else{
                request.setAttribute("errorMsg", "Hãy xác nhận!");
                request.getRequestDispatcher("/user/deposit.do").forward(request, response);
            }
            Account account = af.select(accId);
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            request.getRequestDispatcher("/user/profile.do").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/user/deposit.do").forward(request, response);
        }
        
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}