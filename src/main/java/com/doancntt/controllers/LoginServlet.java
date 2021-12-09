package com.doancntt.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.Customer;
import com.doancntt.beans.CustomerOrder;
import com.doancntt.beans.OrderDetail;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            ServletUtils.forward("views/login/index.jsp", request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        Customer c = CustomerModel.FindByEmail(email);
        if (c != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(pass.toCharArray(), c.getPassword());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("Verified", true);
                session.setAttribute("Customer_logged_in", c);
                List<CustomerOrder> List_CO = CustomerModel.FindOrderByCusID(c.getCustomer_ID());
                String order_id = "";
                int sumofBook = 0;
                for (CustomerOrder co : List_CO) {
                    order_id += String.valueOf(co.getOrder_ID()) + ",";
                }
                order_id = order_id.substring(0, order_id.length() - 1);
                List<OrderDetail> List_OD = CustomerModel.FindByOrderID(order_id);
                for (OrderDetail od : List_OD) {
                    sumofBook += od.count_book;
                }
                String url = (String) session.getAttribute("retUrl");
                if (url == null)
                    url = "/";
                session.setAttribute("shdm",sumofBook);
                ServletUtils.redirect(url, request, response);
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


