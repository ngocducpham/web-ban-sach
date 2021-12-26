package com.doancntt.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.Admin;
import com.doancntt.beans.Detail_Request;
import com.doancntt.beans.order_request;
import com.doancntt.models.AdminModel;
import com.doancntt.models.order_requestModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "AdminServlet", value = "/Admin/*")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Login";
        }
        switch (path) {
            case "/Login":
                ServletUtils.forward("/views/Admin/Login.jsp", request, response);
                break;
            case "/Dashboard":
                ServletUtils.forward("/views/Admin/DashBoard.jsp", request, response);
                break;
            case "/RequestOrder":
                List<order_request> list= order_requestModel.Find_All();
                request.setAttribute("all_request",list);
                ServletUtils.forward("/views/Admin/Request.jsp", request, response);
                break;
            case "/Request_Detail":
                int cus_id=Integer.parseInt(request.getParameter("cus_id"));
                List<Detail_Request> dr=order_requestModel.FindByCusId(cus_id);
                request.setAttribute("requests",dr);
                ServletUtils.forward("/views/Admin/RequestDetail.jsp", request, response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Login";
        }
        switch (path) {
            case "/Login":
                Login(request, response);
                break;
            case "/Dashboard":
//                Login(request,response);
                break;
            default:
                break;
        }
    }

    private void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin = AdminModel.FindByEmail(email);

        if (admin != null) {
            if (Objects.equals(admin.getPassword(), password)) {
                HttpSession session = request.getSession();
                session.setAttribute("adminlogin", true);
                ServletUtils.forward("/views/Admin/Dashboard.jsp", request, response);
            } else {
                // sai password
                request.setAttribute("hasError", true);
                ServletUtils.redirect("/Admin/Login", request, response);

            }
        } else {
            request.setAttribute("hasError", true);
            ServletUtils.redirect("/Admin/Login", request, response);
        }
    }
}
