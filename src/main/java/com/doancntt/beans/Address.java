package com.doancntt.beans;

public class Address {
    public int Address_ID;
    public String Phone_Number;
    public String Full_Address;
    public int Customer_ID;

    public Address(int address_ID, String phone_Number, String full_Address, int customer_ID) {
        Address_ID = address_ID;
        Phone_Number = phone_Number;
        Full_Address = full_Address;
        Customer_ID = customer_ID;
    }

    public void setAddress_ID(int address_ID) {
        Address_ID = address_ID;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public void setFull_Address(String full_Address) {
        Full_Address = full_Address;
    }

    public void setCustomer_ID(int customer_ID) {
        Customer_ID = customer_ID;
    }

    public int getAddress_ID() {
        return Address_ID;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public String getFull_Address() {
        return Full_Address;
    }

    public int getCustomer_ID() {
        return Customer_ID;
    }
}
