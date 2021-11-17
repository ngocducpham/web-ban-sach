package com.doancntt.beans;

import java.util.Date;

public class Book {
    private int Book_ID;
    private String Title;
    private int Pages;
    private String Publication_Date;
    private String Description;
    private int Price;
    private int Discount;
    private int Language_ID;
    private int Category_ID;
    private int Publisher_ID;
    private int Author_ID;
    private String Img;

    public int getBook_ID() {
        return Book_ID;
    }

    public String getTitle() {
        return Title;
    }

    public int getPages() {
        return Pages;
    }

    public String getPublication_Date() {
        return Publication_Date;
    }

    public String getDescription() {
        return Description;
    }

    public int getPrice() {
        return Price;
    }

    public int getDiscount() {
        return Discount;
    }

    public int getLanguage_ID() {
        return Language_ID;
    }

    public int getCategory_ID() {
        return Category_ID;
    }

    public int getPublisher_ID() {
        return Publisher_ID;
    }

    public int getAuthor_ID() {
        return Author_ID;
    }

    public String getImg() {
        return Img;
    }

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

