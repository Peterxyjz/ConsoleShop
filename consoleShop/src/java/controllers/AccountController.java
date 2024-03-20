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

        switch (action) {
            case "index":
                index(request, response);
                break;
            case "signup":
                signup(request, response);
                break;
            case "signup_handler":
                signup_handler(request, response);
                break;
            case "login":
                login(request, response);
                break;
            case "login_handler":
                login_handler(request, response);
                break;
            case "update":
                update(request, response);
                break;
            case "forgot":
                forgot(request, response);
                break;
            case "forgot_handler":
                forgot_handler(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
        }
    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void signup(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void signup_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String password_check = request.getParameter("password_check");

            boolean errMsgEmailNull = false;
            boolean errMsgUsernameNull = false;
            boolean errMsgPasswordNull = false;
            boolean errMsgPassword_checkNull = false;
            boolean errMsgEmail = false;
            AccountFacade af = new AccountFacade();
            boolean isExisted = af.isExisted(email);

            if (email == "") {
                errMsgEmailNull = true;
            }
            if (username == "") {
                errMsgUsernameNull = true;
            }
            if (password == "") {
                errMsgPasswordNull = true;
            }
            if (password_check == "") {
                errMsgPassword_checkNull = true;
            }
            if (isExisted) {
                errMsgEmail = true;
            }

            if (errMsgEmailNull) {
                request.setAttribute("errMsgEmailNull", "Không được để trống");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            } else if (errMsgEmail) {
                request.setAttribute("errMsgEmail", "Email đã tồn tại");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            } else if (errMsgUsernameNull) {
                request.setAttribute("errMsgUsernameNull", "Không được để trống");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            } else if (errMsgPasswordNull) {
                request.setAttribute("errMsgPasswordNull", "Không được để trống");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            } else if (errMsgPassword_checkNull) {
                request.setAttribute("errMsgPassword_checkNull", "Không được để trống");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            } else if (password.equals(password_check)) {
                HttpSession session = request.getSession();
                //lay thong tin tu client
                Account account = new Account();
                account.setEmail(email);
                account.setUsername(username);
                account.setPassword(password);
                //kiem tra thong tin login
                af.create(account);

                Account loginAccount = af.login(email, password);

                session.setAttribute("account", loginAccount);
                String urlSignup = (String) session.getAttribute("urlSignup");
                System.out.println("urlSignup:" + urlSignup);
                //chuyen den trang home
                if (urlSignup != null) {
                    request.getRequestDispatcher(urlSignup).forward(request, response);
                } else {
                    request.getRequestDispatcher("/").forward(request, response);
                }
            } else {
                request.setAttribute("errMsgPass", "*Mật khẩu không trùng khớp");
                request.getRequestDispatcher("/account/signup.do").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "Có lỗi gì đó rồi!!");
            request.getRequestDispatcher("/account/signup.do").forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //doc email & password tu cookies
        Cookie cks[] = request.getCookies();
        Cookie ckEmail = null;
        Cookie ckPassword = null;
        for (Cookie ck : cks) {
            if (ck.getName().equals("email")) {
                ckEmail = ck;
            } else if (ck.getName().equals("password")) {
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
            System.out.println("" + remember);
            //kiem tra thong tin login
            AccountFacade af = new AccountFacade();
            Account account = af.login(email, password);
            //lay tham chieu cua session
            HttpSession session = request.getSession();
            String urlLogin = (String) session.getAttribute("urlLogin");
            //neu login thanh cong
            if (account != null) {
                //luu email & password vao cookies
                int maxAge = remember ? 7 * 24 * 60 * 60 : 0;//1 week
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
                //chuyển đến trang dựa theo url
                if (urlLogin != null) {
                    request.getRequestDispatcher(urlLogin).forward(request, response);
                } else {
                    request.getRequestDispatcher("/").forward(request, response);
                }
            } else {
                //gan thong bao loi
                request.setAttribute("errMsg", "Hãy kiểm tra lại mật khẩu hoặc tài khoản");
                //quay ve trang login
                request.getRequestDispatcher("/account/login.do").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/account/login.do").forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("accId"));
            AccountFacade af = new AccountFacade();
            session.setAttribute("account", af.select(id));
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", e);
            request.getRequestDispatcher("/account/index.do").forward(request, response);
        }
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void update_handler(HttpServletRequest request, HttpServletResponse response)
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
            request.getRequestDispatcher("/account/index.do").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "Something is wrong");
            request.getRequestDispatcher("/account/update.do").forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

//    protected void delete(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String layout = (String) request.getAttribute("layout");
//        try {
//            request.setAttribute("id", request.getParameter("id"));
//            request.setAttribute("username", request.getParameter("username"));
//        } catch (Exception e) {
//            e.printStackTrace();
//            request.setAttribute("errMsg", "Có gì đó xảy ra");
//            request.setAttribute("action", "delete");
//        }
//        request.getRequestDispatcher(layout).forward(request, response);
//    }
//
//    private void delete_handler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String layout = (String) request.getAttribute("layout");
//        try {
//            AccountFacade af = new AccountFacade();
//            //Lấy dữ liệu từ client
//            int id = Integer.parseInt(request.getParameter("id"));
//            String op = request.getParameter("op");
//            switch (op) {
//                case "Yes":
//                    af.delete(id);
//                    logout(request, response);
//                    break;
//                case "No":
//                    response.sendRedirect(request.getContextPath() + "/");
//                    break;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();//in chi tiet cua ngoai le
//            //request.setAttribute("errorMsg", e.toString());//e.getMessage()
//            request.setAttribute("errorMsg", "Error when deleting ");
//            //Cho hiện lại trang index (chạy lại case "index")
//            request.getRequestDispatcher("/").forward(request, response);
//        }
//    }
    protected void forgot(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void forgot_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            AccountFacade af = new AccountFacade();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String password_check = request.getParameter("password_check");
            //check email
            Account account = af.select(email);
            if (account != null) {
                if (password != "") {
                    System.out.println(password.trim());
                    if (!password_check.equals(password)) {
                        //show error
                        request.setAttribute("errMsg", "*Mật khẩu không trùng khớp");
                        //quay lại forgot_handler.do
                        request.getRequestDispatcher("/account/forgot.do").forward(request, response);
                    } else {
                        //nếu đã trùng khớp thì tiến hành update password
                        account.setPassword(password);
                        System.out.println("" + account.getPassword());
                        af.update_password(account);
                        //quay ve trang login
                        request.getRequestDispatcher("/account/login.do").forward(request, response);
                    } 
                }else {
                    request.setAttribute("errMsg", "*Hong được để trống");
                    request.getRequestDispatcher("/account/forgot.do").forward(request, response);
                }
            } else {
                request.setAttribute("errMsg", "*Tài khoản không tồn tại");
                request.getRequestDispatcher("/account/forgot.do").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "có lỗi gì đó xảy ra");
            System.out.println("ddaay af?");
            request.getRequestDispatcher("/account/login.do").forward(request, response);
            request.getRequestDispatcher(layout).forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lay tham chieu cua session
        HttpSession session = request.getSession();
        //huy session
        String urlLogout = (String) session.getAttribute("urlLogout");
        session.removeAttribute("account");
        //quay ve trang home
        request.getRequestDispatcher(urlLogout).forward(request, response);
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
