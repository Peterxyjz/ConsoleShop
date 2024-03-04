package controllers;

import db.Category;
import db.CategoryFacade;
import db.Product;
import db.ProductFacade;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminController", urlPatterns = {"/admin"})
@MultipartConfig
public class AdminController extends HttpServlet {

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
            case "create":
                create(request, response);
                break;
            case "create_handler":
                create_handler(request, response);
                break;
        }

    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void create(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        //đọc table brand và chuyền list qua view để tạo combobox
        try {
            CategoryFacade cf = new CategoryFacade();
            List<Category> list = cf.select();
            request.setAttribute("list", list);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when reading category data");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void create_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            //Lấy dữ liệu từ client
            String proName = request.getParameter("proName");
            double price = Double.parseDouble(request.getParameter("price"));
            double discount = Double.parseDouble(request.getParameter("discount"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String description = request.getParameter("description");
            //Tạo đối tượng product
            Product product = new Product();
            product.setProName(proName);
            product.setPrice(price);
            product.setDiscount(discount);
            product.setAmount(amount);
            product.setCategoryId(categoryId);
            product.setBrandId(1); //TẠM
            product.setDescription(description);
            //tránh bị ngoại lệ
            CategoryFacade cf = new CategoryFacade();
            List<Category> list = cf.select();
            request.setAttribute("list", list);
            //Lưu toy vào db
            pf.create(product);
            response.sendRedirect(request.getContextPath() + "/admin/index.do");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when inserting product data");
            request.setAttribute("action", "create");
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
