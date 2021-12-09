package com.doancntt.controllers;

import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "BuyNumCartServlet", value = "/BuyNumCart/*")
public class BuyNumCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String path = request.getPathInfo();
        String url = (String) session.getAttribute("retUrl");
        if (path.equals("/")) {

        } else {
            switch (path) {
                case "/plus":
                    if (url == null)
                        url = "/";
                    CustomerModel.addtocart(request, response);
                    ServletUtils.redirect(url, request, response);
                    break;
                case "/minus":
                    if (url == null)
                        url = "/";
                    CustomerModel.removeOnefromcart(request, response);
                    ServletUtils.redirect(url, request, response);
                    break;
                case "/remove":
                    if (url == null)
                        url = "/";
                    CustomerModel.removefromcart(request, response);
                    ServletUtils.redirect(url, request, response);
                default:
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
