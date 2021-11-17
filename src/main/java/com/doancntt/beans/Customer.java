package com.doancntt.beans;

public class Customer {
    public int Customer_ID;
    public String First_Name;
    public String Email;
    public String Last_Name;
    public String Password;

    public Customer(int customer_ID, String first_Name, String email, String last_Name, String password) {
        Customer_ID = customer_ID;
        First_Name = first_Name;
        Email = email;
        Last_Name = last_Name;
        Password = password;
    }
}
