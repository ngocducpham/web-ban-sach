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

    public Customer(String first_Name, String email, String last_Name, String password) {
        First_Name = first_Name;
        Email = email;
        Last_Name = last_Name;
        Password = password;
    }

    public void setCustomer_ID(int customer_ID) {
        Customer_ID = customer_ID;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public int getCustomer_ID() {
        return Customer_ID;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public String getEmail() {
        return Email;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public String getPassword() {
        return Password;
    }
}
