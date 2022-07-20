/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.UserModel;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author killua
 */
public class User extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String action= request.getParameter("action");
        if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("login.jsp");
        }

    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proses = request.getParameter("proses");

        if (proses.equals("login")) {
            String user = request.getParameter("name");
            String pass = request.getParameter("password");
            String email=request.getParameter("email");
            String id=request.getParameter("id_user");
            if (pass == null || pass.equals("")) {   //validasi apabila field belum diisi
                response.sendRedirect("form-kosong.jsp");
            } else {
                UserModel pm = new UserModel();
                List<UserModel> datalogin = new ArrayList<UserModel>();

                datalogin = pm.LoginUser(email, pass);
                if (datalogin.isEmpty()) { //validasi apabila username dan password salah
                    response.sendRedirect("auth/login.jsp"); 
                } else {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("email", datalogin.get(0).getEmail());
                    session.setAttribute("name", datalogin.get(0).getName());
                    session.setAttribute("id", datalogin.get(0).getId());

                    if (datalogin.get(0).getEmail().equals(email)) {
                        response.sendRedirect("Courses.jsp");
                    } else {
                        response.sendRedirect("auth/login.jsp");
                    }
                }
            }
        }
        else if(proses.equals("register")){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserModel pm = new UserModel();
        pm.CreateUser(name, email, password, "customer");
        }

    }
}