/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.Account;
import db.AccountFacade;
import db.OrderDetailFacade;
import db.OrdersFacade;
import db.ProductFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Cart;
import models.Item;

@WebServlet(name = "OrderController", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");

        switch (action) {
            case "checkAccount":
                checkAccount(request, response);
                break;
            case "infor":
                infor(request, response);
                break;
            case "order_handler":
                order_handler(request, response);
                break;
            case "orderInfor":
                orderInfor(request, response);
                break;
            case "checkout":
                checkout(request, response);
                break;
            case "thanks":
                thanks(request, response);
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
            request.getRequestDispatcher("/order/infor.do").forward(request, response);

        }
    }

    protected void infor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void order_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String layout = (String) request.getAttribute("layout");
        try {
            String fullName = request.getParameter("fullName");
            String phone = request.getParameter("phone");

            String province = request.getParameter("province");
            String district = request.getParameter("district");
            String ward = request.getParameter("ward");
            String address = request.getParameter("address");
            String infor = String.format("%-25s | %s | %s | %s| %s| %s|", fullName, phone, address, ward, district, province);

            HttpSession session = request.getSession();
            // Lưu thông tin ngươì dùng 
            if (Boolean.parseBoolean(request.getParameter("remember"))) {
                Account account = (Account) session.getAttribute("account");
                account.setFullName(fullName);
                account.setPhoneNumber(phone);
                account.setAddress(address + " " + ward + " " + district + " " + province);
                AccountFacade af = new AccountFacade();
                af.updateInformation(account);
            }
            session.setAttribute("infor", infor);
            PrintWriter out = response.getWriter();
            out.println(infor);
            out.close();
            request.getRequestDispatcher("/order/orderInfor.do").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("/order/infor.do").forward(request, response);
        }
    }

    protected void orderInfor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String layout = (String) request.getAttribute("layout");
        String infor = (String) session.getAttribute("infor");
        Cart cart = (Cart) session.getAttribute("cart");
        System.out.println("cart :" + cart.getTotal());

        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void checkout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");

        try {
            //hoàn thành lưu cart vào db
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            //xu li discount
            
            Account account = (Account) session.getAttribute("account");
            String payments = request.getParameter("payments");
            if (payments.equals("card")) {
                //chỉnh lại số dư trong tài khoản:
                account.setWallet(account.getWallet() - cart.getTotal() - 50000);
                AccountFacade af = new AccountFacade();
                af.update_wallet(account.getWallet() - cart.getTotal() - 50000, account.getAccId());
            }
            //
            StringTokenizer st = new StringTokenizer((String) session.getAttribute("infor"), "|");
            String fullName = st.nextToken().trim();
            String phone = st.nextToken().trim();
            String shipAdress = st.nextToken().trim();
            String ward = st.nextToken().trim();
            String district = st.nextToken().trim();
            String province = st.nextToken().trim();
            
            //tạo order
            OrdersFacade of = new OrdersFacade();
            int ordId = of.create(shipAdress + " " + ward + " " + district + " " + province, account.getAccId(), "Chờ xác nhận", cart.getTotal() + 50000, payments);
            request.setAttribute("ordId", ordId);
            OrderDetailFacade odf = new OrderDetailFacade();
            //add order detail và cập nhật lại số lượng sản phẩm
            ProductFacade pf = new ProductFacade();
            for (Item item : cart.getItems()) {
                odf.create(item, ordId);
                pf.update_amount(item.getProduct().getProId(), item.getProduct().getAmount() - item.getQuantity());
            }

            
            //cập nhật lại cart:
            session.setAttribute("cart", null);
            request.getRequestDispatcher("/order/thanks.do").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
    }

    protected void thanks(HttpServletRequest request, HttpServletResponse response)
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
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
