package file;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = {"/editfile"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class EditFile extends HttpServlet {

    String IMAGE_FOLDER = Contants.IMAGE_FOLDER;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int proId = Integer.parseInt(request.getParameter("proId"));
            System.out.println("proId in dopost: "+proId);
            String fileName = String.format("%s%d.jpg", IMAGE_FOLDER,proId);
            System.out.println("fileName: " + fileName);
            File file = new File(fileName);
            if (file.delete()) {
                
                Part filePart = request.getPart("photo");
                fileName = String.format("%d.jpg", proId);
                for (Part part : request.getParts()) {
                    part.write(IMAGE_FOLDER + fileName);
                }
            } else {
                System.err.println("file does not exist to edit!!!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
