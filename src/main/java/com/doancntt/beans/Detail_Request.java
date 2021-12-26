package com.doancntt.beans;

import java.util.Date;

public class Detail_Request {
    private int Customer_ID, so_sach, tien_sach;
    private Date Order_Date;
    private String Dest_Address;
    private String Title;
    private String Img;
    private String Last_Name;

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public Detail_Request(int so_sach, int tien_sach, Date order_Date, String dest_Address, String title, String img, String last_Name, String first_Name) {
        this.so_sach = so_sach;
        this.tien_sach = tien_sach;
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Title = title;
        Img = img;
        Last_Name = last_Name;
        First_Name = first_Name;
    }

    public Detail_Request(int customer_ID, int so_sach, int tien_sach, Date order_Date, String dest_Address, String title, String img, String last_Name, String first_Name) {
        Customer_ID = customer_ID;
        this.so_sach = so_sach;
        this.tien_sach = tien_sach;
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Title = title;
        Img = img;
        Last_Name = last_Name;
        First_Name = first_Name;
    }

    private String First_Name;

    public int getCustomer_ID() {
        return Customer_ID;
    }

    public void setCustomer_ID(int customer_ID) {
        Customer_ID = customer_ID;
    }

    public int getSo_sach() {
        return so_sach;
    }

    public void setSo_sach(int so_sach) {
        this.so_sach = so_sach;
    }

    public int getTien_sach() {
        return tien_sach;
    }

    public void setTien_sach(int tien_sach) {
        this.tien_sach = tien_sach;
    }

    public Date getOrder_Date() {
        return Order_Date;
    }

    public void setOrder_Date(Date order_Date) {
        Order_Date = order_Date;
    }

    public String getDest_Address() {
        return Dest_Address;
    }

    public void setDest_Address(String dest_Address) {
        Dest_Address = dest_Address;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String img) {
        Img = img;
    }

    public Detail_Request(int so_sach, int tien_sach, Date order_Date, String dest_Address, String title, String img) {
        this.so_sach = so_sach;
        this.tien_sach = tien_sach;
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Title = title;
        Img = img;
    }

    public Detail_Request(int customer_ID, int so_sach, int tien_sach, Date order_Date, String dest_Address, String title, String img) {
        Customer_ID = customer_ID;
        this.so_sach = so_sach;
        this.tien_sach = tien_sach;
        Order_Date = order_Date;
        Dest_Address = dest_Address;
        Title = title;
        Img = img;
    }
}
