package com.doancntt.models;

import com.doancntt.beans.Address;
import com.doancntt.beans.Customer;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

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
        int Customer_ID_insert= getMaxID();
        insertSql = "insert into address (Phone_Number, Full_Address, Customer_ID)\n" +
                "values (:sdt,:diachi,:CusID);";
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(insertSql)
                    .addParameter("sdt", a.getPhone_Number())
                    .addParameter("diachi", a.getFull_Address())
                    .addParameter("CusID",Customer_ID_insert)
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
        String findSql = "select max(Customer_ID) from customer;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Customer> list = con.createQuery(findSql)
                    .executeAndFetch(Customer.class);
            return list.get(0).getCustomer_ID();
        }
    }
}
