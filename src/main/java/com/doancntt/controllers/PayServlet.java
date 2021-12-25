package com.doancntt.controllers;

import com.doancntt.beans.*;
import com.doancntt.models.BookModel;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PayServlet", value = "/tratien")
public class PayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("Customer_logged_in");
        Address a = CustomerModel.FindAddressByCusID(c.getCustomer_ID());
        List<CustomerOrder> List_CO = CustomerModel.FindOrderByCusID(c.getCustomer_ID());
        if (List_CO.size() != 0) {
            String order_id = "";
            String book_list_id = "";
            int sumofBook = 0;
            int bill_cost = 0;
            for (CustomerOrder co : List_CO) {
                order_id += String.valueOf(co.getOrder_ID()) + ",";
            }
            order_id = order_id.substring(0, order_id.length() - 1);

            List<OrderDetail> List_OD = CustomerModel.FindByOrderID(order_id);

            for (OrderDetail od : List_OD) {
                book_list_id += String.valueOf(od.getBook_ID()) + ",";
                sumofBook += od.count_book;
                for (int i = 0; i < od.count_book; i++) {
                    bill_cost += od.Total_Cost;
                }
            }

            book_list_id = book_list_id.substring(0, book_list_id.length() - 1);
            List<Book> Book_ordered = BookModel.FindListOfBookById(book_list_id);

            request.setAttribute("customer_order", List_CO);
            request.setAttribute("order_detail", List_OD);
            request.setAttribute("Book_ordered", Book_ordered);
            request.setAttribute("customer_address", a);
            request.setAttribute("count_book", sumofBook);
            request.setAttribute("bill_cost", bill_cost);
            session.setAttribute("shdm", sumofBook);
            ServletUtils.forward("views/payment/index.jsp", request, response);
        } else {
            session.setAttribute("shdm", 0);
            ServletUtils.forward("views/cart/Nothing.jsp", request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("Customer_logged_in");
        List<CustomerOrder> Cuctomer_order_to_delete = CustomerModel.Cuctomer_order_to_delete(c.getCustomer_ID());
        String List_order = "";
        for (CustomerOrder od : Cuctomer_order_to_delete) {
            List_order += String.valueOf(od.getOrder_ID()) + ",";
        }
        List_order = List_order.substring(0, List_order.length() - 1);

        CustomerModel.delete_Order_detail(List_order);
        session.setAttribute("shdm", 0);
        ServletUtils.redirect("/", request, response);
    }
}
