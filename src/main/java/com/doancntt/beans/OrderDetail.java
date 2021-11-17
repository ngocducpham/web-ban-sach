package com.doancntt.beans;

public class OrderDetail {
    public int Order_Detail_ID;
    public int Quantity;
    public int Total_Cost;
    public int Book_ID;
    public int Order_ID;

    public OrderDetail(int order_Detail_ID, int quantity, int total_Cost, int book_ID, int order_ID) {
        Order_Detail_ID = order_Detail_ID;
        Quantity = quantity;
        Total_Cost = total_Cost;
        Book_ID = book_ID;
        Order_ID = order_ID;
    }
}
