package com.doancntt.controllers;

import com.doancntt.beans.Book;
import com.doancntt.models.BookModel;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BuyServlet", value = "/AddtoCart")
public class BuyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean Verified = (boolean) session.getAttribute("Verified");
        if (!Verified) {
            ServletUtils.redirect("/Login", request, response);
        } else {
                String url = (String) session.getAttribute("retUrl");
                if (url == null)
                    url = "/";
                CustomerModel.addtocart(request, response);
                ServletUtils.redirect(url, request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
