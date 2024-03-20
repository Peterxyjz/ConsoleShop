/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.ProductFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.Product;
import java.sql.SQLException;

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
                try {
                    search(request, response);
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            case "search_handler":
                search_handler(request, response);
                break;
            case "searchAuto":
                searchAuto(request, response);
                break;
            case "searchFilter_handler":
                searchFilter_handler(request, response);
                break;
            case "showBestSeller":
                showBestSeller(request, response);
                break;
        }
        // request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {

            String proName = (request.getParameter("proName"));

            ProductFacade pf = new ProductFacade();
            List<Product> list = pf.selectProList();
            Product product = null;
            for (Product item : list) {
                if (item.getProName().equals(proName)) {
                    product = item;
                }
            }
            request.setAttribute("product", product);
            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Error when loading product data.");
        }
        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void search(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String layout = (String) request.getAttribute("layout");

        request.getRequestDispatcher(layout).forward(request, response);
    }

    protected void search_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            
            String searchName = request.getParameter("search") == null ? "" : request.getParameter("search");
            int index = Integer.parseInt(request.getParameter("index"));
            int tag = index;
            System.out.println("search: " + searchName);
            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.searchProductByName(searchName);
            System.out.println(prodList.isEmpty());
            //lấy số trang
            int endP = getMaxPage(prodList, index);
            //trả về list gồm 16 sản phẩm
            prodList = pf.searchProductByName(searchName, index);
            //setAttribute
            request.setAttribute("tag", tag);
            request.setAttribute("list", prodList);
            request.setAttribute("endP", endP);
            request.setAttribute("tag", tag);
            request.getRequestDispatcher("/product/search.do").forward(request, response);
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
            
            double priceLower = Double.parseDouble(request.getParameter("priceLower") == "" ? "0" : request.getParameter("priceLower"));
            double priceUpper = Double.parseDouble(request.getParameter("priceUpper") == "" ? "0" : request.getParameter("priceUpper"));

            if (priceUpper == 0) {
                priceUpper = Integer.MAX_VALUE;
            }
            String sort = request.getParameter("sort");
            int index = Integer.parseInt(request.getParameter("index"));
            int tag = index;

            ProductFacade pf = new ProductFacade();
            //lấy full list
            List<Product> prodList = pf.searchProductByFilter(categoryName, status, priceLower, priceUpper, sort);
            //lấy số trang dựa theo size của list
            int endP = getMaxPage(prodList, index);
            //lấy list chỉ có 16 sp thui
            prodList = pf.searchProductByFilter(categoryName, status, priceLower, priceUpper, sort, index);
            request.setAttribute("tag", tag);

            request.setAttribute("categoryName", categoryName);
            request.setAttribute("status", status);
            request.setAttribute("priceLower", priceLower);
            request.setAttribute("priceUpper", priceUpper);
            request.setAttribute("sort", sort);
            request.setAttribute("list", prodList);
            request.setAttribute("endP", endP);
            request.setAttribute("tag", tag);
            
            request.getRequestDispatcher("/product/search.do").forward(request, response);
        } catch (IOException | NumberFormatException | SQLException | ServletException e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
    }

    protected int getMaxPage(List prodList, int index) {
        int endP = prodList.size() / 16;
        if (prodList.size() % 16 != 0) {
            endP++;
        }
        return endP;
    }
    
    protected void showBestSeller(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String layout = (String) request.getAttribute("layout");
        try {
            ProductFacade pf = new ProductFacade();
            List<Product> prodList = pf.getBestSellerProduct();
            System.out.println(prodList.get(0).getProName());
            request.setAttribute("list", prodList);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("/").forward(request, response);
        }
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
