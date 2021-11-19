package com.doancntt.controllers;

import com.doancntt.beans.Book;
import com.doancntt.models.BookModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Home", urlPatterns = "/")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String path = request.getPathInfo();
        List<Book> newBooks = BookModel.findNewBook(8);
        List<Book> vanHocMoi = BookModel.timSachVanHocMoi(8);
        List<Book> kinhTeMoi = BookModel.timSachKinhTeMoi(8);
        List<Book> doiSongMoi = BookModel.timSachDoiSongMoi(8);
        List<String> linkHomePage = new ArrayList<>();
        linkHomePage.add("Sách+Mới+Nhập+Về");
        linkHomePage.add("Sách+Văn+Học+Mới");
        linkHomePage.add("Sách+Kinh+Tế+Mới");
        linkHomePage.add("Sách+Thường+Thức+-+Đời+Sống+Mới");
        request.setAttribute("newBooks", newBooks);
        request.setAttribute("vanhocmoi", vanHocMoi);
        request.setAttribute("kinhtemoi", kinhTeMoi);
        request.setAttribute("doisongmoi", doiSongMoi);
        request.setAttribute("link", linkHomePage);
        ServletUtils.forward("/views/homes/index.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
