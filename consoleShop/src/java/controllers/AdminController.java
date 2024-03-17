package controllers;

import db.Account;
import db.AccountFacade;
import db.Category;
import db.CategoryFacade;
import db.Product;
import db.ProductFacade;
import java.sql.SQLException;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        }

    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void getEmployeeList(HttpServletRequest request, HttpServletResponse response)
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
            pf.create(product);

            response.sendRedirect(request.getContextPath() + "/admin/index.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when inserting product data");
            request.setAttribute("action", "create");
            request.getRequestDispatcher(layout).forward(request, response);
        }
    }

    protected void updateEmployee(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void updateEmployee_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            HttpSession session = request.getSession();
            AccountFacade af = new AccountFacade();

            String accId = request.getParameter("accId");
            String fullName = request.getParameter("fullName");
            String username = request.getParameter("username");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date birthDay = sdf.parse(request.getParameter("birthDay"));
            String address = request.getParameter("address");
            String country = request.getParameter("country");
            String phoneNumber = request.getParameter("phoneNumber");
            //lấy account ra
            Account account_updating = (Account) session.getAttribute("account");

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

    protected void edit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void edit_form(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            Product product = pf.searchProductByName(request.getParameter("proName")).get(0);
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
            int proId = Integer.parseInt(request.getParameter("proId"));
            String proName = request.getParameter("proName");
            double price = Double.parseDouble(request.getParameter("price"));
            double discount = Double.parseDouble(request.getParameter("discount"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String description = request.getParameter("description");
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

            String sort = request.getParameter("sort");

            String str = "SELECT * FROM Product WHERE CategoryId in "
                    + "(SELECT CategoryId FROM Category Where CategoryName like '%" + categoryName + "%')"
                    + "AND Amount " + status
                    + " ORDER BY " + sort;

            System.out.println("syt:" + str);

            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByFilterForAdmin(categoryName, status, sort);

            request.setAttribute("list", prodList);

            request.getRequestDispatcher("/admin/edit.do").forward(request, response);
        } catch (IOException | NumberFormatException | SQLException | ServletException e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
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
