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
}
