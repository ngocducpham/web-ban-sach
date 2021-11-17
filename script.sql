create table author
(
    Author_ID   int          not null
        primary key,
    Author_Name varchar(255) not null
);

create table book_banner
(
    ID      int auto_increment
        primary key,
    Book_ID int null
);

create table book_category
(
    Type_ID   int          not null
        primary key,
    Type_Name varchar(255) not null
);

create table book_language
(
    Language_ID   int          not null
        primary key,
    Language_Name varchar(255) not null
);

create table customer
(
    Customer_ID int          not null
        primary key,
    First_Name  varchar(255) not null,
    Email       varchar(255) not null,
    Last_Name   varchar(255) not null,
    Password    varchar(255) not null
);

create table address
(
    Address_ID   int          not null
        primary key,
    Phone_Number varchar(255) not null,
    Full_Address varchar(255) not null,
    Customer_ID  int          not null,
    constraint address_ibfk_1
        foreign key (Customer_ID) references customer (Customer_ID)
);

create index Customer_ID
    on address (Customer_ID);

create table customer_order
(
    Order_ID        int  not null
        primary key,
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
    Publisher_ID   int          not null
        primary key,
    Publisher_Name varchar(255) not null
);

create table books
(
    Book_ID          int          not null
        primary key,
    Title            varchar(255) not null,
    Pages            int          not null,
    Publication_Date date         not null,
    Description      varchar(255) not null,
    Price            int          not null,
    Discount         int          not null,
    Language_ID      int          not null,
    Type_ID          int          not null,
    Publisher_ID     int          not null,
    Author_ID        int          not null,
    Img              varchar(255) null,
    constraint books_ibfk_1
        foreign key (Language_ID) references book_language (Language_ID),
    constraint books_ibfk_2
        foreign key (Type_ID) references book_category (Category_ID),
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
    Order_Detail_ID int not null
        primary key,
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

