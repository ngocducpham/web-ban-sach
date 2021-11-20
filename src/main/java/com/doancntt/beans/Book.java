package com.doancntt.beans;

import java.util.Date;

public class Book {
    private int Book_ID;

    public int getBook_ID() {
        return Book_ID;
    }

    public void setBook_ID(int book_ID) {
        Book_ID = book_ID;
    }

    private String Title;
    private int Pages;
    private String Publication_Date;
    private String Description;
    private int Price;
    private int Discount;
    private String Language_Name;
    private String Category_Name;
    private String Publisher_Name;
    private String Author_Name;
    private String Img;

    public Book(String title, int pages, String publication_Date, String description, int price, int discount, String language_Name, String category_Name, String publisher_Name, String author_Name, String img) {
        Title = title;
        Pages = pages;
        Publication_Date = publication_Date;
        Description = description;
        Price = price;
        Discount = discount;
        Language_Name = language_Name;
        Category_Name = category_Name;
        Publisher_Name = publisher_Name;
        Author_Name = author_Name;
        Img = img;
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

    public String getLanguage_Name() {
        return Language_Name;
    }

    public String getCategory_Name() {
        return Category_Name;
    }

    public String getPublisher_Name() {
        return Publisher_Name;
    }

    public String getAuthor_Name() {
        return Author_Name;
    }

    public String getImg() {
        return Img;
    }
}

