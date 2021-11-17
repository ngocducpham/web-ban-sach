package com.doancntt.beans;

import java.util.Date;

public class Book {
    public int Book_ID;
    public String Title;
    public int Pages;
    public String Publication_Date;
    public String Description;
    public int Price;
    public int Discount;
    public int Language_ID;
    public int Category_ID;
    public int Publisher_ID;
    public int Author_ID;
    public String Img;

    public Book(int book_ID, String title, int pages, String publication_Date, String description, int price, int discount, int language_ID, int category_ID, int publisher_ID, int author_ID, String img) {
        Book_ID = book_ID;
        Title = title;
        Pages = pages;
        Publication_Date = publication_Date;
        Description = description;
        Price = price;
        Discount = discount;
        Language_ID = language_ID;
        Category_ID = category_ID;
        Publisher_ID = publisher_ID;
        Author_ID = author_ID;
        Img = img;
    }
}

