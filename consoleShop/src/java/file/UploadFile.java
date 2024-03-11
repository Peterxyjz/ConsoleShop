package file;

import db.ProductFacade;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = {"/uploadfile"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class UploadFile extends HttpServlet {

    String IMAGE_FOLDER = Contants.IMAGE_FOLDER;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ProductFacade pf = new ProductFacade();
            Part filePart = request.getPart("photo");
            String fileName = String.format("%d.jpg", pf.getProIdForUpload());
            for (Part part : request.getParts()) {
                part.write(IMAGE_FOLDER + fileName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}