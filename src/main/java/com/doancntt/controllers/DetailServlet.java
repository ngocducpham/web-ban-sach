package com.doancntt.controllers;

import com.doancntt.beans.Book;
import com.doancntt.models.BookModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailServlet", value = "/Detail")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idBook = Integer.parseInt(request.getParameter("id"));
        Book bookB = BookModel.FindBookById(idBook);
//        System.out.println(idBook);
        request.setAttribute("book", bookB);
        ServletUtils.forward("views/details/index.jsp", request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
