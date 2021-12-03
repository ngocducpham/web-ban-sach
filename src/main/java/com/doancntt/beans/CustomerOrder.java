package com.doancntt.beans;

import java.time.LocalDate;
import java.util.Date;

public class CustomerOrder {
    public int Order_ID;
    public LocalDate Order_Date;
    public String Dest_Address;
    public int Customer_ID;

    public CustomerOrder(LocalDate order_Date, String dest_Address, int customer_ID) {
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Customer_ID = customer_ID;
    }

    public int getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(int order_ID) {
        Order_ID = order_ID;
    }

    public LocalDate getOrder_Date() {
        return Order_Date;
    }

    public void setOrder_Date(LocalDate order_Date) {
        Order_Date = order_Date;
    }

    public String getDest_Address() {
        return Dest_Address;
    }

    public void setDest_Address(String dest_Address) {
        Dest_Address = dest_Address;
    }

    public int getCustomer_ID() {
        return Customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        Customer_ID = customer_ID;
    }

    public CustomerOrder(int order_ID, LocalDate order_Date, String dest_Address, int customer_ID) {
        Order_ID = order_ID;
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Customer_ID = customer_ID;
    }
}
