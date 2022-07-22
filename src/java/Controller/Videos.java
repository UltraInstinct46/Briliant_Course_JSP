/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.UserModel;
import Model.VideoModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author killua
 */
public class Videos extends HttpServlet {

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
        String proses = request.getParameter("proses");
        if(proses.equals("add")){
        String type = request.getParameter("type");
        String title = request.getParameter("title");
        String code = request.getParameter("code");
        VideoModel vm = new VideoModel();
        vm.CreateVideo(type, title, code);
        response.sendRedirect("backend/video/DataCode.jsp");
        }
        else if (proses.equals("deletevideo")) {
            VideoModel vm = new VideoModel();
            String id = request.getParameter("id");
            vm.DeleteVideo(id);
            response.sendRedirect("backend/video/DataVideo.jsp");
        }
        else if (proses.equals("updatevideo")) {
            String id = request.getParameter("id");
            List<VideoModel> updatedata = new ArrayList<UserModel>();
            VideoModel vm = new VideoModel();
            updatedata = um.SearchVideo(id);
            HttpSession session = request.getSession(true);
            session.setAttribute("id_video", updatedata.get(0).getId());
            session.setAttribute("type_video", updatedata.get(0).getType());
            session.setAttribute("title_video", updatedata.get(0).getTitle());
            session.setAttribute("code_video", updatedata.get(0).getCode());
            response.sendRedirect("backend/video/EditVideo.jsp");
        }
        else if (proses.equals("updatevideodata")) {
            String id_video = request.getParameter("id_video");
            String type = request.getParameter("type_video");
            String title = request.getParameter("title_video");
            String code = request.getParameter("code_video");
            VideoModel vm = new VideoModel();
            vm.UpdateVideo(type, title, code, id_video);
            response.sendRedirect("backend/video/DataVideo.jsp");
        }
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
