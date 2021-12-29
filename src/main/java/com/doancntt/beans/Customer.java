package com.doancntt.beans;

public class Customer {
    public int Customer_ID;
    public String First_Name;
    public String Email;
    public String Last_Name;
    public String Password;
    public String Code;
    public int Address_ID;
    public String Phone_Number;
    public String Full_Address;
    public String province;

    public int getAddress_ID() {
        return Address_ID;
    }

    public void setAddress_ID(int address_ID) {
        Address_ID = address_ID;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public String getFull_Address() {
        return Full_Address;
    }

    public void setFull_Address(String full_Address) {
        Full_Address = full_Address;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public Customer(int customer_ID, String first_Name, String email, String last_Name, String password, String code) {
        Customer_ID = customer_ID;
        First_Name = first_Name;
        Email = email;
        Last_Name = last_Name;
        Password = password;
        Code = code;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String code) {
        Code = code;
    }

    public Customer(int customer_ID, String first_Name, String email, String last_Name, String password) {
        Customer_ID = customer_ID;
        First_Name = first_Name;
        Email = email;
        Last_Name = last_Name;
        Password = password;
    }

    public Customer() {
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
