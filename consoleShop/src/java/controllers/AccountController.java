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
@WebServlet(name = "AccountController", urlPatterns = {"/account"})
public class AccountController extends HttpServlet {

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
        
        switch(action){
            case "index":
             index(request, response);
                break;
            case "login":
             login(request, response);
                break;
            case "login_handler":
             login_handler(request, response);
                break;
            case "create":
                signUp(request, response);
                break;
            case "create_handler":
                signUp_handler(request, response);
                break;
            case "update":
                update(request, response);
                break;
            case "updated_handler":
                update_handler(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "delete_handler":
                delete_handler(request, response);
                break;
            case "forgot":
                forgot(request, response);
                break;
            case "forgot_handler":
                forgot_handler(request,response);
                break;
        }
    }
    
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "Error occurs when reading Student Data");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void signUp(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    protected void signUp_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doc email & password tu cookies
        Cookie cks[] = request.getCookies();
        Cookie ckEmail = null;
        Cookie ckPassword = null;        
        for(Cookie ck: cks){
            if(ck.getName().equals("email")){
                ckEmail = ck;
            }else if(ck.getName().equals("password")){
                ckPassword = ck;
            }
        }
        request.setAttribute("ckEmail", ckEmail);
        request.setAttribute("ckPassword", ckPassword);
        //hien form login
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void login_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            //lay thong tin tu client
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            boolean remember = request.getParameter("remember") != null;
            System.out.println("Remember: " + remember);
            //kiem tra thong tin login
            AccountFacade af = new AccountFacade();
            Account account = af.login(email, password);
            //lay tham chieu cua session
            HttpSession session = request.getSession();
            //neu login thanh cong
            if (account != null) {
                //luu email & password vao cookies
                int maxAge = remember? 7 * 24 * 60 * 60: 0; //1 week
                Cookie ckEmail = new Cookie("email", email);
                //neu khong setMaxAge() thi ckEmail la cookie tam thoi
                //chi dung duoc trong 1 session
                ckEmail.setMaxAge(maxAge);
                response.addCookie(ckEmail);

                Cookie ckPassword = new Cookie("password", password);
                ckPassword.setMaxAge(maxAge);
                response.addCookie(ckPassword);
                //luu account vao session
                session.setAttribute("account", account);
                //chuyen den trang home
                request.getRequestDispatcher("/").forward(request, response);
                //request.getRequestDispatcher("/home/index.do").forward(request, response);
            } else {
                //gan thong bao loi
                request.setAttribute("errorMsg", "có lỗi gì đó rồi.");
                //quay ve trang login
                request.getRequestDispatcher("/account/login.do").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void update(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("id", id);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", e);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void update_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            AccountFacade af = new AccountFacade();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String country = request.getParameter("country");
            String phoneNumber = request.getParameter("phoneNumber");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date birthDay = sdf.parse(request.getParameter("birthDay"));
            
            Account account = af.select(Integer.parseInt(request.getParameter("id")));
            account.setEmail(email);
            account.setPassword(password);
            account.setFirstName(firstName);
            account.setLastName(lastName);
            account.setCountry(country);
            account.setPhoneNumber(phoneNumber);
            account.setBirthDay(birthDay);
            af.update(account);
            response.sendRedirect(request.getContextPath() + "/account/update.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "No can't do");
            request.setAttribute("action", "edit");
            request.getRequestDispatcher(layout).forward(request, response);
        }
    }
    
    protected void delete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            request.setAttribute("id", request.getParameter("id"));
            request.setAttribute("lastName", request.getParameter("lastName"));
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", e);
            request.setAttribute("action", "delete");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    private void delete_handler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            AccountFacade af = new AccountFacade();
            //Lấy dữ liệu từ client
            int id = Integer.parseInt(request.getParameter("id"));
            String op = request.getParameter("op");
            switch (op) {
                case "Yes":
                    af.delete(id);
                    break;
                case "No":
                    break;
            }
            response.sendRedirect(request.getContextPath() + "/student/index.do");
        } catch (Exception e) {
            e.printStackTrace();//in chi tiet cua ngoai le
            //request.setAttribute("errorMsg", e.toString());//e.getMessage()
            request.setAttribute("errorMsg", "Error when deleting ");
            //Cho hiện lại trang index (chạy lại case "index")v 
            request.getRequestDispatcher("/index.do").forward(request, response);
        }
    }
    
    protected void forgot(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("id", id);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", e);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void forgot_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            AccountFacade af = new AccountFacade();
            String password = request.getParameter("password");
            String repeatedPassword = request.getParameter("repeatedPassword");
            
            if(repeatedPassword == password){
            
            Account account = af.select(Integer.parseInt(request.getParameter("id")));
            account.setPassword(password);

            af.update(account);
            //quay ve trang login
            request.setAttribute("successMsg", "bây giờ bạn có thể log in");
            response.sendRedirect(request.getContextPath() + "/student/login.do");
            }
            request.setAttribute("faliedMsg", "Mật khẩu không trùng khớp");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "can not update your account");
            request.setAttribute("action", "edit");
            request.getRequestDispatcher(layout).forward(request, response);
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
