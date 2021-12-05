package com.doancntt.controllers;

import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PersonalServlet", value = "/User/*")
public class PersonalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path.equals("/")) {
            ServletUtils.redirect("/", request, response);
        } else {
            switch (path) {
                case "/UserArea":
                    String email = request.getParameter("email");
                    Customer c = CustomerModel.FindByEmail(email);
                    if (c != null) {
                        request.setAttribute("Customer_infor", c);
                        ServletUtils.forward("/views/personal/index.jsp", request, response);
                    } else {
                        ServletUtils.redirect("/", request, response);
                    }
                    break;
                default:
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String path=request.getPathInfo();
       if(path.equals("/")){
           ServletUtils.redirect("/", request, response);
       }else {
           switch (path){
               case "/Logout":
                   HttpSession session = request.getSession();
                   session.setAttribute("Verified", false);
                   session.setAttribute("Customer_logged_in", new Customer());
                   ServletUtils.redirect("/", request, response);
                   break;
               default:
                   break;
           }
       }
    }
}
