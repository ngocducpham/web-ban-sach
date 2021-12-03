package com.doancntt.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            ServletUtils.forward("views/login/index.jsp", request, response);
        }
//        else {
//            if (path.equals("/CheckValid")) {
//                String email = request.getParameter("email");
//                String pass = request.getParameter("pass");
//                Customer c = CustomerModel.FindByEmailAndPass(email, pass);
//                boolean isAvailable = (c != null);
//
//                PrintWriter out = response.getWriter();
//                response.setContentType("application/json");
//                response.setCharacterEncoding("utf-8");
//
//                out.print(isAvailable);
//                out.flush();
//            }
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        System.out.println(email);
        Customer c = CustomerModel.FindByEmail(email);
        if (c != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(pass.toCharArray(), c.getPassword());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("Verified", true);
                session.setAttribute("Customer_logged_in", c);
                ServletUtils.redirect("/", request, response);
//                ServletUtils.forward("views/login/index.jsp", request, response);
            } else {
                request.setAttribute("hasError", true);
                request.setAttribute("errorMessage", "Invalid login.");
                ServletUtils.forward("views/login/index.jsp", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            request.setAttribute("errorMessage", "Invalid login.");
            ServletUtils.forward("views/login/index.jsp", request, response);
        }
    }
}


