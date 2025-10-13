package com.sist.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

@WebServlet("/upload")
public class FileUploadServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "C:/upload";  // 저장 경로

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        if (ServletFileUpload.isMultipartContent(request)) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setHeaderEncoding("UTF-8");

            try {
                List<FileItem> items = upload.parseRequest(request);
                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        String fileName = Paths.get(item.getName()).getFileName().toString();
                        File uploadDir = new File(UPLOAD_DIR);
                        if (!uploadDir.exists()) uploadDir.mkdirs();

                        File uploadedFile = new File(uploadDir, fileName);
                        item.write(uploadedFile);
                        response.getWriter().println("✅ 업로드 완료: " + uploadedFile.getAbsolutePath() + "<br>");
                    }
                }
            } catch (Exception e) {
                response.getWriter().println("❌ 업로드 실패: " + e.getMessage());
            }
        } else {
            response.getWriter().println("multipart/form-data 형식이 아닙니다.");
        }
    }
}