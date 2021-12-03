package com.doancntt.beans;

public class OrderDetail {
    public int Order_Detail_ID;
    public int Quantity;
    public int Total_Cost;
    public int Book_ID;

    public int getOrder_Detail_ID() {
        return Order_Detail_ID;
    }

    public OrderDetail(int quantity, int total_Cost, int book_ID) {
        Quantity = quantity;
        Total_Cost = total_Cost;
        Book_ID = book_ID;
    }

    public OrderDetail(int quantity, int total_Cost, int book_ID, int order_ID) {
        Quantity = quantity;
        Total_Cost = total_Cost;
        Book_ID = book_ID;
        Order_ID = order_ID;
    }

    public void setOrder_Detail_ID(int order_Detail_ID) {
        Order_Detail_ID = order_Detail_ID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    public int getTotal_Cost() {
        return Total_Cost;
    }

    public void setTotal_Cost(int total_Cost) {
        Total_Cost = total_Cost;
    }

    public int getBook_ID() {
        return Book_ID;
    }

    public void setBook_ID(int book_ID) {
        Book_ID = book_ID;
    }

    public int getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(int order_ID) {
        Order_ID = order_ID;
    }

    public int Order_ID;

    public OrderDetail(int order_Detail_ID, int quantity, int total_Cost, int book_ID, int order_ID) {
        Order_Detail_ID = order_Detail_ID;
        Quantity = quantity;
        Total_Cost = total_Cost;
        Book_ID = book_ID;
        Order_ID = order_ID;
    }
}
