package file;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(urlPatterns = {"/deletefile"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class DeleteFile extends HttpServlet {

    String IMAGE_FOLDER = Contants.IMAGE_FOLDER;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int proId = Integer.parseInt(request.getParameter("proId"));
            String fileName = String.format("%s%d.jpg", IMAGE_FOLDER,proId);
            System.out.println("fileName: " + fileName);
            File file = new File(fileName);
            if (file.delete()) {
                System.out.println("Delete image successful");
            } else {
                System.err.println("file does not exist to delete!!!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
