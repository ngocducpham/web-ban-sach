drop database bookstore;
create database BookStore;
use BookStore;
create table author
(
    Author_ID   int  not null auto_increment primary key,
    Author_Name text not null
);

create table book_banner
(
    ID      int auto_increment primary key,
    Book_ID int  null,
    Img     text null
);

create table book_category
(
    Category_ID   int auto_increment not null primary key,
    Category_Name text not null
);

create table book_language
(
    Language_ID   int  not null auto_increment primary key,
    Language_Name text not null
);

create table customer
(
    Customer_ID int auto_increment not null primary key,
    First_Name  text not null,
    Email       text not null,
    Last_Name   text not null,
    Password    text not null
);

create table address
(
    Address_ID   int auto_increment not null primary key,
    Phone_Number text not null,
    Full_Address text not null,
    Customer_ID  int  not null,
    constraint address_ibfk_1
        foreign key (Customer_ID) references customer (Customer_ID)
);

create index Customer_ID
    on address (Customer_ID);

create table customer_order
(
    Order_ID  int auto_increment not null primary key,
    Order_Date      date not null,
    Dest_Address_ID int  not null,
    Customer_ID     int  not null,
    constraint customer_order_ibfk_1
        foreign key (Customer_ID) references customer (Customer_ID)
);

create index Customer_ID
    on customer_order (Customer_ID);

create table publisher
(
    Publisher_ID   int auto_increment not null primary key,
    Publisher_Name text not null
);

create table books
(
    Book_ID          int auto_increment not null primary key,
    Title            text not null,
    Pages            int  not null,
    Publication_Date date not null,
    Description      text not null,
    Price            int  not null,
    Discount         int  not null,
    Language_ID      int  not null,
    Category_ID      int  not null,
    Publisher_ID     int  not null,
    Author_ID        int  not null,
    Img              text null,
    constraint books_ibfk_1
        foreign key (Language_ID) references book_language (Language_ID),
    constraint books_ibfk_2
        foreign key (Category_ID) references book_category (Category_ID),
    constraint books_ibfk_3
        foreign key (Publisher_ID) references publisher (Publisher_ID),
    constraint books_ibfk_4
        foreign key (Author_ID) references author (Author_ID)
);

create index Author_ID
    on books (Author_ID);

create index Language_ID
    on books (Language_ID);

create index Publisher_ID
    on books (Publisher_ID);

create index Type_ID
    on books (Category_ID);

create table order_detail
(
    Order_Detail_ID int auto_increment not null primary key,
    Quantity        int not null,
    Total_Cost      int not null,
    Book_ID         int not null,
    Order_ID        int not null,
    constraint order_detail_ibfk_1
        foreign key (Book_ID) references books (Book_ID),
    constraint order_detail_ibfk_2
        foreign key (Order_ID) references customer_order (Order_ID)
);

create index Book_ID
    on order_detail (Book_ID);

create index Order_ID
    on order_detail (Order_ID);

