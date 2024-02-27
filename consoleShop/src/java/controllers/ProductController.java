/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import db.ProductFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Product;

/**
 *
 * @author QUOC PHONG
 */
@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

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
        String layout = (String) request.getAttribute("layout");

        switch (action) {
            case "index":
                index(request, response);
                
                break;
            case "search":
                search(request, response);
                break;

            case "search_handler":
                search_handler(request, response);
                break;

        }
       // request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            ProductFacade pf = new ProductFacade();
            List<Product> list = pf.selectProList();
            request.setAttribute("list", list);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when loading product data.");
        }
        request.getRequestDispatcher(layout).forward(request, response);
        
    }

    protected void search(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void search_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            
            String searchName = request.getParameter("search");
            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByName(searchName); 
            System.out.println(prodList.isEmpty());
            Product product = null;
            
            for (Product item : prodList) {
                product = item;
            }
            request.setAttribute("list", prodList);
            request.getRequestDispatcher("/product/search.do").forward(request, response);
        } catch (Exception e) {
            printStackTrace();
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
