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
    private int Book_Language;
    private int Book_Category;
    private int Book_Publisher;
    private int Book_Author;
    private String Language_Name;
    private String Category_Name;
    private String Publisher_Name;
    private String Author_Name;
    private String Img;

    public Book(String title, int pages, String publication_Date, String description, int price, int discount, int book_Language, int book_Category, int book_Publisher, int book_Author, String img) {
        Title = title;
        Pages = pages;
        Publication_Date = publication_Date;
        Description = description;
        Price = price;
        Discount = discount;
        Book_Language = book_Language;
        Book_Category = book_Category;
        Book_Publisher = book_Publisher;
        Book_Author = book_Author;
        Img = img;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public void setPages(int pages) {
        Pages = pages;
    }

    public void setPublication_Date(String publication_Date) {
        Publication_Date = publication_Date;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public void setPrice(int price) {
        Price = price;
    }

    public void setDiscount(int discount) {
        Discount = discount;
    }

    public int getBook_Language() {
        return Book_Language;
    }

    public void setBook_Language(int book_Language) {
        Book_Language = book_Language;
    }

    public int getBook_Category() {
        return Book_Category;
    }

    public void setBook_Category(int book_Category) {
        Book_Category = book_Category;
    }

    public int getBook_Publisher() {
        return Book_Publisher;
    }

    public void setBook_Publisher(int book_Publisher) {
        Book_Publisher = book_Publisher;
    }

    public int getBook_Author() {
        return Book_Author;
    }

    public void setBook_Author(int book_Author) {
        Book_Author = book_Author;
    }

    public void setLanguage_Name(String language_Name) {
        Language_Name = language_Name;
    }

    public void setCategory_Name(String category_Name) {
        Category_Name = category_Name;
    }

    public void setPublisher_Name(String publisher_Name) {
        Publisher_Name = publisher_Name;
    }

    public void setAuthor_Name(String author_Name) {
        Author_Name = author_Name;
    }

    public void setImg(String img) {
        Img = img;
    }

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

