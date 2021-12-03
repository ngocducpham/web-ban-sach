package com.doancntt.models;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.*;
import com.doancntt.utils.DatabaseUtils;
import com.doancntt.utils.ServletUtils;
import org.sql2o.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

public class CustomerModel {
    public static void Add(Customer c, Address a) {
        String insertSql = "insert into customer (First_Name, Last_Name,Email, Password)\n" +
                "values (:ho,:ten,:email,:pass);";
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(insertSql)
                    .addParameter("ho", c.getFirst_Name())
                    .addParameter("ten", c.getLast_Name())
                    .addParameter("email", c.getEmail())
                    .addParameter("pass", c.getPassword())
                    .executeUpdate();
        }
        int x = getMaxCusID();
        insertSql = "insert into address (Phone_Number, Full_Address, Customer_ID)\n" +
                "values (:sdt,:diachi,:CusID);";
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(insertSql)
                    .addParameter("sdt", a.getPhone_Number())
                    .addParameter("diachi", a.getFull_Address())
                    .addParameter("CusID", x)
                    .executeUpdate();
        }
    }

    public static Customer FindByEmailPass(String email, String pass) {
        String insertSql = "select * from customer where Email=:email and  Password=:pass;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(insertSql)
                    .addParameter("email", email)
                    .addParameter("pass", pass)
                    .executeAndFetch(Customer.class);
            if (list.size() == 0) return null;
            else return list.get(0);
        }
    }

    static int getMaxCusID() {
        String findSql = "select Customer_ID from customer order by Customer_ID desc LIMIT 1;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .executeAndFetch(Customer.class);
            return list.get(0).getCustomer_ID();
        }
    }

    public static Customer FindByEmail(String email) {
        String findSql = "select * from customer where Email=:email;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .addParameter("email", email)
                    .executeAndFetch(Customer.class);
            if (list.size() == 0)
                return null;
            else return list.get(0);
        }
    }

    public static Customer FindById(int id) {
        String findSql = "select * from customer where Customer_ID=:id;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .addParameter("id", id)
                    .executeAndFetch(Customer.class);
            if (list.size() == 0)
                return null;
            else return list.get(0);
        }
    }

    public static Customer FindByEmailAndPass(String email, String pass) {
        String findSql = "select * from customer where Email=:email";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .addParameter("email", email)
                    .executeAndFetch(Customer.class);

            if (list.size() == 0)
                return null;
            else {
                BCrypt.Result result = BCrypt.verifyer().verify(pass.toCharArray(), list.get(0).Password);
                if (result.verified) {
                    return list.get(0);
                } else return null;
            }
        }
    }

    public static Address FindAddressByCusID(int id) {
        String findSql = "select * from address where Customer_ID=:id;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Address> list = con.createQuery(findSql)
                    .addParameter("id", id)
                    .executeAndFetch(Address.class);
            if (list.size() == 0)
                return null;
            else return list.get(0);
        }
    }

    public static void AddnewCustomer_Order(CustomerOrder co) {
        String insertSql = "insert into customer_order (Order_Date, Dest_Address, Customer_ID)\n" +
                "values (:order_date,:dest_address,:customer_id);";
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(insertSql)
                    .addParameter("order_date", co.getOrder_Date())
                    .addParameter("dest_address", co.getDest_Address())
                    .addParameter("customer_id", co.getCustomer_ID())
                    .executeUpdate();
        }
    }

    public static void AddnewOrder_detail(OrderDetail od) {
        String insertSql = "insert into order_detail (Quantity, Total_Cost, Book_ID, Order_ID)\n" +
                "values (:quantity,:total_cost,:book_id,:order_id);";
        int x = getMaxCus_OrderID();
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(insertSql)
                    .addParameter("quantity", od.getQuantity())
                    .addParameter("total_cost", od.getTotal_Cost())
                    .addParameter("book_id", od.getBook_ID())
                    .addParameter("order_id", x)
                    .executeUpdate();
        }
    }

    static int getMaxCus_OrderID() {
        String findSql = "select Order_ID from customer_order order by Order_ID desc LIMIT 1;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<CustomerOrder> list = con.createQuery(findSql)
                    .executeAndFetch(CustomerOrder.class);
            return list.get(0).getOrder_ID();
        }
    }

    public static List<CustomerOrder> FindOrderByCusID(int id) {
        String findSql = "select * from customer_order where Customer_ID=:id;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<CustomerOrder> list = con.createQuery(findSql)
                    .addParameter("id", id)
                    .executeAndFetch(CustomerOrder.class);
            return list;
        }
    }

    public static List<OrderDetail> FindByOrderID(String id_list) {
        String findSql = "select * from order_detail where Order_ID in ("+ id_list +")";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<OrderDetail> list = con.createQuery(findSql)
                    .executeAndFetch(OrderDetail.class);
            return list;
        }
    }

    //function to add from fe
    public static void addnewCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ho, ten, email, pass, Encrypted_pass, diachi, sdt;
        ho = request.getParameter("ho");
        ten = request.getParameter("ten");
        email = request.getParameter("email");
        pass = request.getParameter("password");
        Encrypted_pass = BCrypt.withDefaults().hashToString(12, pass.toCharArray());
        sdt = request.getParameter("sdt");
        diachi = request.getParameter("diachi");
        Customer c = new Customer(ho, email, ten, Encrypted_pass);
        Address a = new Address(sdt, diachi);
        Add(c, a);
        ServletUtils.redirect("/Login", request, response);
    }

    //function addtocart
    public static void addtocart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int book_id = Integer.parseInt(request.getParameter("bookid"));
        Book bookB = BookModel.FindBookById(book_id);
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("Customer_logged_in");
        Address a = FindAddressByCusID(c.getCustomer_ID());
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDate d = LocalDate.now();
        dtf.format(d);
        ZoneId systemTimeZone = ZoneId.systemDefault();

        ZonedDateTime zonedDateTime = d.atStartOfDay(systemTimeZone);

        Date utilDate = Date.from(zonedDateTime.toInstant());
        CustomerOrder co = new CustomerOrder(utilDate, a.getFull_Address(), c.getCustomer_ID());
        int cost = bookB.getPrice() * (100 - bookB.getDiscount()) / 100;
        OrderDetail od = new OrderDetail(1, cost, book_id);

        AddnewCustomer_Order(co);
        AddnewOrder_detail(od);
    }
}
