package com.doancntt.controllers;

import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PersonalServlet", value = "/Personal")
public class PersonalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        Customer c= CustomerModel.FindById(id);
        if(c!=null){
            request.setAttribute("Customer_infor",c);
            ServletUtils.forward("views/personal/index.jsp", request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
