package controllers;

import db.Account;
import db.AccountFacade;
import db.Category;
import db.CategoryFacade;
import db.Employee;
import db.EmployeeFacade;
import db.Orders;
import db.OrdersFacade;
import db.Product;
import db.ProductFacade;
import java.sql.SQLException;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminController", urlPatterns = {"/admin"})
public class AdminController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");

        switch (action) {
            case "index":
                index(request, response);
                break;
            case "create":
                create(request, response);
                break;
            case "create_handler":
                create_handler(request, response);
                break;
            case "edit":
                edit(request, response);
                break;
            case "edit_form":
                edit_form(request, response);
                break;
            case "edit_handler":
                edit_handler(request, response);
                break;

//            case "getEmployeeList":
//                getEmployeeList(request, response);
//                break;
            case "addEmployee":
                addEmployee(request, response);
                break;
            case "addEmployee_handler":
                addEmployee_handler(request, response);
                break;

            case "updateEmployee":
                updateEmployee(request, response);
                break;
            case "updateEmployee_handler":
                updateEmployee_handler(request, response);
                break;
            case "deleteEmployee":
                deleteEmployee(request, response);
                break;
            case "delete_handler":
                delete_handler(request, response);
                break;
            case "search_handler":
                search_handler(request, response);
                break;
            case "searchAuto":
                searchAuto(request, response);
                break;
            case "searchFilter_handler":
                searchFilter_handler(request, response);
                break;
            case "coordination":
                coordination(request, response);
                break;
            case "confirmOrder":
                confirmOrder(request, response);
                break;
        }

    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            //Facade
            EmployeeFacade ef = new EmployeeFacade();
            OrdersFacade of = new OrdersFacade();
            //employee:
            List<Employee> empList = ef.selectEmployee();
            request.setAttribute("empList", empList);

            //orders:
            List<Orders> orderWaitingList = of.selectWaitingOrder();
            List<Orders> orderCheckedList = of.selectCheckedOrder();
            
            //cập nhật đơn hoàn thành
            Date current = new Date();
            for (Orders check : orderCheckedList) {
                if (check.getShippedDate().before(current)) {
                    of.statusComplete(check.getOrdId());
                }
            }
            List<Orders> orderCompletedList = of.selectCompletedList();
            request.setAttribute("orderCompletedList", orderCompletedList);
            request.setAttribute("orderWaitingList", orderWaitingList);
            request.setAttribute("orderCheckedList", orderCheckedList);

            //income:
            double income = 0;
            for (Orders orders : orderCompletedList) {
                income += orders.getTotal();
            }
            request.setAttribute("income", income);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void create(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            CategoryFacade cf = new CategoryFacade();
            List<Category> caList = cf.select();
            request.setAttribute("caList", caList);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when reading category data");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void uploadFile(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void create_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            //Lấy dữ liệu từ client:
            String proName = request.getParameter("proName");
            double price = Double.parseDouble(request.getParameter("price"));
            double discount = Double.parseDouble(request.getParameter("discount"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String description = request.getParameter("description");

            //Tạo product
            Product product = new Product();
            product.setProName(proName);
            product.setPrice(price);
            product.setDiscount(discount);
            product.setAmount(amount);
            product.setCategoryId(categoryId);
            product.setDescription(description);
            //tránh bị ngoại lệ
            CategoryFacade cf = new CategoryFacade();
            List<Category> caList = cf.select();
            request.setAttribute("caList", caList);
            //Lưu db
            int proIdImg = pf.create(product);
            System.out.println("proIdImg: " + proIdImg);
            request.setAttribute("proIdImg", proIdImg);
            PrintWriter out = response.getWriter();
            out.print(proIdImg);
            out.close();

//            response.sendRedirect(request.getContextPath() + "/admin/index.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when inserting product data");
            request.setAttribute("action", "create");
            request.getRequestDispatcher(layout).forward(request, response);
        }
    }

    protected void addEmployee(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String layout = (String) request.getAttribute("layout");

            AccountFacade af = new AccountFacade();
            List<Account> list = af.showAllAccount();
            request.setAttribute("list", list);

            request.getRequestDispatcher(layout).forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void addEmployee_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String layout = (String) request.getAttribute("layout");

            //get param
            int accId = Integer.parseInt(request.getParameter("accId"));
            System.out.println(accId);
            AccountFacade af = new AccountFacade();
            //get account by id
            Account acc = af.select(accId);
            //change account role to employee
            af.changeRoleToEmployee(acc.getAccId());

            af.addAccountToEmployee(acc.getAccId(), "Nhân viên");
            EmployeeFacade ef = new EmployeeFacade();

            request.setAttribute("position", ef.selectEmpByAccId(acc.getAccId()).getPosition());

            request.getRequestDispatcher("/admin/index.do").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void updateEmployee(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String layout = (String) request.getAttribute("layout");
            int accId = Integer.parseInt(request.getParameter("accId"));

            AccountFacade af = new AccountFacade();
            Account acc = af.select(accId);

            EmployeeFacade ef = new EmployeeFacade();

            request.setAttribute("position", ef.selectEmpByAccId(accId).getPosition());
            request.setAttribute("account", acc);

            request.getRequestDispatcher(layout).forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    protected void updateEmployee_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            AccountFacade af = new AccountFacade();

            int accId = Integer.parseInt(request.getParameter("accId"));
            String fullName = request.getParameter("fullName");
            String phoneNumber = request.getParameter("phoneNumber");
            String position = request.getParameter("position");
            String role = request.getParameter("role");
            //lấy account ra
            Account account = af.select(accId);
            account.setFullName(fullName);
            account.setRole(role);
            account.setPhoneNumber(phoneNumber);

            //
            EmployeeFacade ef = new EmployeeFacade();
            Employee emp = ef.selectEmpByAccId(accId);
            emp.setPosition(position);
            ef.updateEmployeePosition(emp);
            af.update(account);
            
            if(!role.equals("employee")){
                ef.deleteEmployee(accId);
            }
            List<Account> empList = af.getEmployeeList();

            request.setAttribute("empList", empList);

            request.getRequestDispatcher("/admin/index.do").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errMsg", "Something is wrong");
            request.getRequestDispatcher("/account/login.do").forward(request, response);
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void edit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void edit_form(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            System.out.println("ëdir-form id:" +request.getParameter("proId"));
                    
            ProductFacade pf = new ProductFacade();
            Product product = pf.select(Integer.parseInt(request.getParameter("proId")));
            CategoryFacade cf = new CategoryFacade();
            List<Category> caList = cf.select();
            request.setAttribute("caList", caList);
            request.setAttribute("product", product);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when reading category data");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void edit_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            System.out.println("proId: "+request.getParameter("proId"));
                    
            int proId = Integer.parseInt(request.getParameter("proId"));
            String proName = request.getParameter("proName");
            double price = Double.parseDouble(request.getParameter("price"));
            double discount = Double.parseDouble(request.getParameter("discount"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String description = request.getParameter("description");
            System.out.println("proId: "+proId);
            System.out.println("proName: "+proName);
            System.out.println("price: "+price);
            System.out.println("discount: "+discount);
            System.out.println("amount: "+amount);
            System.out.println("categoryId: "+categoryId);
            System.out.println("description: "+description);
                    
            //Tạo product
            Product product = new Product();
            product.setProId(proId);
            product.setProName(proName);
            product.setPrice(price);
            product.setDiscount(discount);
            product.setAmount(amount);
            product.setCategoryId(categoryId);
            product.setDescription(description);
            //tránh bị ngoại lệ
            CategoryFacade cf = new CategoryFacade();
            List<Category> caList = cf.select();
            request.setAttribute("caList", caList);
            //Lưu toy vào request để hiện lên khi bị ngoại lệ
            request.setAttribute("product", product);

            //Lưu toy vào db
            pf.update(product);

            response.sendRedirect(request.getContextPath() + "/admin/edit.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when updating toy data");
            request.setAttribute("action", "edit");
            request.getRequestDispatcher(layout).forward(request, response);
        }
    }

    protected void delete_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            pf.delete(Integer.parseInt(request.getParameter("proId")));
            response.sendRedirect(request.getContextPath() + "/admin/edit.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when deleting product data");
            request.getRequestDispatcher("/admin/edit.do").forward(request, response);
        }
    }

    protected void deleteEmployee(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            int accId = Integer.parseInt(request.getParameter("accId"));

            AccountFacade af = new AccountFacade();
            af.delete(accId);
            List<Account> empList = af.getEmployeeList();

            request.setAttribute("empList", empList);
            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when deleting product data");
            request.getRequestDispatcher("/admin/index.do").forward(request, response);
        }
    }

    //search:
    protected void search_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            String searchName = request.getParameter("search") == null ? "" : request.getParameter("search");
            System.out.println("search: " + searchName);
            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByName(searchName);
            System.out.println(prodList.isEmpty());

            request.setAttribute("list", prodList);

            request.getRequestDispatcher("/admin/edit.do").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
    }

    protected void searchAuto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            String search = request.getParameter("search");
            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByName(search);

            PrintWriter out = response.getWriter();
            String str = "";
            if (prodList.isEmpty()) {
                str = "No one product";
            } else if (prodList.size() > 6) {
                for (int i = 0; i < 6; i++) {
                    str += String.format("%s,", prodList.get(i).getProName());
                }
            } else {
                for (int i = 0; i < prodList.size(); i++) {
                    str += String.format("%s,", prodList.get(i).getProName());
                }
            }

            str = str.substring(0, str.length() - 1);
            out.print(str);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
    }

    protected void searchFilter_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            String categoryName = request.getParameter("categoryName");

            String status = request.getParameter("status");

            String amount = request.getParameter("amount");

            String sort = request.getParameter("sort");

            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByFilterForAdmin(categoryName, status, amount, sort);

            request.setAttribute("list", prodList);

            request.getRequestDispatcher("/admin/edit.do").forward(request, response);
        } catch (IOException | NumberFormatException | SQLException | ServletException e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
    }
    
    protected void coordination(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            //Facade
            OrdersFacade of = new OrdersFacade();
            //orders:
            List<Orders> orderWaitingList = of.selectWaitingOrder();
            List<Orders> orderCheckedList = of.selectCheckedOrder();
            request.setAttribute("orderWaitingList", orderWaitingList);
            request.setAttribute("orderCheckedList", orderCheckedList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }
    
    protected void confirmOrder(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            int ordId = Integer.parseInt(request.getParameter("ordId"));
            OrdersFacade of = new OrdersFacade();
            of.confirmOrder(ordId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/admin/coordination.do").forward(request, response);
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
