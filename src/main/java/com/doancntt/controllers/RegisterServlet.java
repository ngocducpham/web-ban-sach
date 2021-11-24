package com.doancntt.controllers;

import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/Register/*")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        if(path==null || path.equals("/")) {
            ServletUtils.forward("views/register/index.jsp", request, response);
        }else {
            if(path.equals("/CheckAvailable")){
                System.out.println("cc");
                String email = request.getParameter("email");
                Customer c = CustomerModel.FindByEmail(email);
                boolean isAvailable = (c == null);

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
        CustomerModel.addnewCustomer(request,response);
    }
}
