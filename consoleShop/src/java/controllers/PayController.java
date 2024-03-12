/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.Account;
import db.AccountFacade;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author QUOC PHONG
 */
@WebServlet(name = "PayController", urlPatterns = {"/pay"})
public class PayController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");

        switch (action) {
            case "checkAccount":
                checkAccount(request, response);
                break;
            case "order":
                order(request, response);
                break;
            case "order_handler":
                order_handler(request, response);
                break;

            case "index":
                index(request, response);
                break;
        }
    }

    protected void checkAccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        // check null thi chua dang nhap - > chuyen trang login 
        if (account == null) {
            request.getRequestDispatcher("/account/login.do").forward(request, response);
        } else {
            //account ! null -> chuyen trang dien thong tin 
            request.getRequestDispatcher("/pay/order.do").forward(request, response);

        }
    }

    protected void order(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void order_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");

        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String ward = request.getParameter("ward");
        String address = request.getParameter("address");
        System.out.println("province: " + province);
        System.out.println("district: " + district);
        System.out.println("ward: " + ward);
        System.out.println("address: " + address);
//        Lưu thông tin ngươì dùng 
        String info = String.format("%-25s | $s"
                + "\n %s "
                + "\n%s %s %s", fullName, phone, address, ward, district, province);
        request.setAttribute("info", info);

        request.getRequestDispatcher("/pay/index.do").forward(request, response);
    }

      protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        request.getRequestDispatcher(layout).forward(request, response);
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
