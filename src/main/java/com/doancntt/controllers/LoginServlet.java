package com.doancntt.controllers;

import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/Login/*")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        if(path==null || path.equals("/")) {
            ServletUtils.forward("views/login/index.jsp", request,response);
        }else {
            if(path.equals("/CheckValid")){
                String email = request.getParameter("email");
                String pass=request.getParameter("pass");
                Customer c = CustomerModel.FindByEmailAndPass(email,pass);
                boolean isAvailable = (c != null);

                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");

                out.print(isAvailable);
                out.flush();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        if(path==null || path.equals("/")) {
            ServletUtils.redirect("/", request,response);
        }else {
            if(path.equals("/CheckValid")){
                String email = request.getParameter("email");
                String pass=request.getParameter("pass");
                Customer c = CustomerModel.FindByEmailAndPass(email,pass);
                boolean isAvailable = (c != null);

                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");

                out.print(isAvailable);
                out.flush();
            }
        }
    }
}
