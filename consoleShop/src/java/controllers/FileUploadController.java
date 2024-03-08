package controllers;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = {"/fileuploadservlet"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class FileUploadController extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Part filePart = request.getPart("photo");
        String fileName = filePart.getSubmittedFileName();
        for (Part part : request.getParts()) {
            part.write("D:\\fptu\\CN4\\ConsoleShop\\consoleShop\\web\\images\\" + fileName);
        }
        response.getWriter().print("The file uploaded sucessfully.");
    }

}
