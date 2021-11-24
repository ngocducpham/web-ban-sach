package com.doancntt.models;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.Address;
import com.doancntt.beans.Customer;
import com.doancntt.utils.DatabaseUtils;
import com.doancntt.utils.ServletUtils;
import org.sql2o.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        int x = getMaxID();
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

    static int getMaxID() {
        String findSql = "select Customer_ID from customer order by Customer_ID desc LIMIT 1;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .executeAndFetch(Customer.class);
            return list.get(0).Customer_ID;
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

    public static Customer FindByEmailAndPass(String email,String pass) {
        String findSql = "select * from customer where Email=:email";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .addParameter("email", email)
                    .executeAndFetch(Customer.class);

            if (list.size() == 0)
                return null;
            else{
                BCrypt.Result result = BCrypt.verifyer().verify(pass.toCharArray(), list.get(0).Password);
                if (result.verified){
                    return list.get(0);
                }else  return null;
            }
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
}
