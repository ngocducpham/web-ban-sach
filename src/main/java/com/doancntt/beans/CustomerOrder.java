package com.doancntt.beans;

import java.util.Date;

public class CustomerOrder {
    public int Order_ID;
    public String Order_Date;
    public int Dest_Address_ID;
    public int Customer_ID;

    public CustomerOrder(int order_ID, String order_Date, int dest_Address_ID, int customer_ID) {
        Order_ID = order_ID;
        Order_Date = order_Date;
        Dest_Address_ID = dest_Address_ID;
        Customer_ID = customer_ID;
    }
}
