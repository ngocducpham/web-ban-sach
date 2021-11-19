package com.doancntt.controllers;


import com.doancntt.beans.Book;
import com.doancntt.models.BookModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String textSearch = request.getParameter("q");
        List<Book> searchResult;
        switch (textSearch){
            case "Sách Mới Nhập Về":
                searchResult = BookModel.findNewBook(0);
                break;
            case "Sách Văn Học Mới":
                searchResult = BookModel.timSachVanHocMoi(0);
                break;
            case  "Sách Kinh Tế Mới":
                searchResult = BookModel.timSachKinhTeMoi(0);
                break;
            case "Sách Thường Thức - Đời Sống Mới":
                searchResult = BookModel.timSachDoiSongMoi(0);
                break;
            default:
                searchResult = BookModel.searchBook(textSearch);
                break;
        }
        request.setAttribute("search", searchResult);
        request.setAttribute("searchText", textSearch);
        ServletUtils.forward("/views/searches/index.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
