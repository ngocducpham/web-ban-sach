package com.doancntt.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.*;
import com.doancntt.models.AdminModel;
import com.doancntt.models.BookModel;
import com.doancntt.models.CustomerModel;
import com.doancntt.models.order_requestModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "AdminServlet", value = "/Admin/*")

@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)

public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Login";
        }
        switch (path) {
            case "/Login":
                ServletUtils.forward("/views/Admin/Login.jsp", request, response);
                break;
            case "/RequestOrder":
                List<order_request> list = order_requestModel.Find_All();
                request.setAttribute("all_request", list);
                ServletUtils.forward("/views/Admin/Request.jsp", request, response);
                break;
            case "/Request_Detail":
                int cus_id = Integer.parseInt(request.getParameter("cus_id"));
                List<Detail_Request> dr = order_requestModel.FindByCusId(cus_id);
                request.setAttribute("requests", dr);
                ServletUtils.forward("/views/Admin/RequestDetail.jsp", request, response);
                break;
            case "/OrderStatus":
                int status = Integer.parseInt(request.getParameter("status"));
                int cus_ID = Integer.parseInt(request.getParameter("cus_id"));
                Customer c = CustomerModel.FindById(cus_ID);
                List<Detail_Request> list3 = order_requestModel.FindByCusId(cus_ID);
                if (status == 1) {
                    order_requestModel.acceptOrder(cus_ID);
                    ServletUtils.send_mail_to_noti_accept_order(c, list3);
                } else {
                    order_requestModel.refuseOrder(cus_ID);
                    ServletUtils.send_mail_to_noti_refuse_order(c, list3);
                }
                ServletUtils.redirect("/Admin/RequestOrder", request, response);
                break;
            case "/Customers":
                List<Customer> list1 = CustomerModel.FindAll();
                request.setAttribute("all_customer", list1);
                ServletUtils.forward("/views/Admin/All_Customer.jsp", request, response);
                break;
            case "/Dashboard":
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
                ServletUtils.forward("/views/Admin/All_Books.jsp", request, response);
                break;
            case "/AddBooks":
                ServletUtils.forward("/views/Admin/Add_Books.jsp", request, response);
                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/Login";
        }
        switch (path) {
            case "/Login":
                Login(request, response);
                break;
            case "/Dashboard":
//                Login(request,response);
                break;
            case "/AddBooks":
                AddBook(request, response);
                break;
            default:
                break;
        }
    }

    private void AddBook(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        int pages = Integer.parseInt(request.getParameter("pages"));
        String publication_Date = request.getParameter("publication_date");
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        int book_Language = Integer.parseInt(request.getParameter("book_language"));
        int book_Category = Integer.parseInt(request.getParameter("Cat_ID"));
        int book_Publisher = Integer.parseInt(request.getParameter("publisher"));
        int book_author_id;
        String book_Author = request.getParameter("book_author");
        if (!BookModel.check_author(book_Author)) {
            BookModel.add_author(book_Author);
            book_author_id = BookModel.get_max_author_id();
        }
        book_author_id = BookModel.findAuthor(book_Author);
        int max_book_id = BookModel.get_max_book_id();
        String img = String.valueOf(max_book_id) + ".jpg";
        Book new_book = new Book(title, pages, publication_Date, description, price, discount, book_Language, book_Category, book_Publisher, book_author_id, img);

        Save__new_product_img(request, response, max_book_id);
        BookModel.add_new_book(new_book);

        ServletUtils.redirect("/Admin/Dashboard", request, response);
    }

    private void Save__new_product_img(HttpServletRequest request, HttpServletResponse response, int Book_id) throws ServletException, IOException {
        String targetDir = this.getServletContext().getRealPath("public/imgs/");
        String Server_targetDir = targetDir.replace("target\\do-an-cntt-1.0-SNAPSHOT", "src\\main\\webapp");

        File newDir1 = new File(targetDir);
        File newDir2 = new File(Server_targetDir);

        if (!newDir1.exists()) {
            newDir1.mkdir();
        }

        if (!newDir2.exists()) {
            newDir2.mkdir();
        }

        String destination1 = newDir1 + "/";
        String destination2 = newDir2 + "/";

        for (Part part : request.getParts()) {
            if (part.getName().equals("img_main")) {
                part.write(destination1 + String.valueOf(Book_id) + ".jpg");
                part.write(destination2 + String.valueOf(Book_id) + ".jpg");
                break;
            }
        }
    }

    private void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Admin admin = AdminModel.FindByEmail(email);

        if (admin != null) {
            if (Objects.equals(admin.getPassword(), password)) {
                HttpSession session = request.getSession();
                session.setAttribute("adminlogin", true);
                ServletUtils.redirect("/Admin/Dashboard", request, response);
            } else {
                // sai password
                request.setAttribute("hasError", true);
                ServletUtils.redirect("/Admin/Login", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            ServletUtils.redirect("/Admin/Login", request, response);
        }
    }
}
