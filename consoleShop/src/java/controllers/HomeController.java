/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;
import db.Product;
import db.ProductFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

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
        
        String controller = (String)request.getAttribute("controller");
        String action = (String)request.getAttribute("action");
        String layout = (String)request.getAttribute("layout");
        
        switch(action){
            case "index":
                //xử lý
                index(request, response);
                break;           
        }
    }
 protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String layout = (String) request.getAttribute("layout");
            
            ProductFacade pf = new ProductFacade();
            List<Product> gameList = pf.getProByCategory(1);
            Collections.shuffle(gameList);

            List<Product> nintendoNewList = pf.getNewNintendo(2);
            List<Product> nintendoLikeNewList = pf.getLikeNewNintendo(2);
            Collections.shuffle(nintendoNewList);
            Collections.shuffle(nintendoLikeNewList);

            request.setAttribute("gameList", gameList);
            request.setAttribute("nintendoNewList", nintendoNewList);
            request.setAttribute("nintendoLikeNewList", nintendoLikeNewList);
            request.getRequestDispatcher(layout).forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
