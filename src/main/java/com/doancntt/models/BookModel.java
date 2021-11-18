package com.doancntt.models;

import com.doancntt.beans.Book;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.List;

public class BookModel {
    public static List<Book> findByCategory(int categoryID){
        return null;
    }

    public static List<Book> findAll(){
        final String query = "select *from books";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> findNewBook(int limit){
        String query = "select Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "       Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "order by Publication_Date desc";
        if(limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachVanHocMoi(int limit){
        String query = "select Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 2 or bc.Category_ID = 3\n" +
                "order by Publication_Date desc";
        if(limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachKinhTeMoi(int limit){
        String query = "select Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 1\n" +
                "order by Publication_Date desc";
        if(limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static List<Book> timSachDoiSongMoi(int limit){
        String query = "select Title, Pages, Publication_Date, Description, Price, Discount, Img,\n" +
                "Language_Name, Category_Name, Publisher_Name, Author_Name\n" +
                "from  books\n" +
                "    join author a on a.Author_ID = books.Author_ID\n" +
                "    join publisher p on p.Publisher_ID = books.Publisher_ID\n" +
                "    join book_category bc on bc.Category_ID = books.Category_ID\n" +
                "    join book_language bl on books.Language_ID = bl.Language_ID\n" +
                "where bc.Category_ID = 4\n" +
                "order by Publication_Date desc";
        if(limit != 0) {
            query += "\nlimit " + limit;
        }
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(query).executeAndFetch(Book.class);
        }
    }

    public static Book FindProId(int id) {
        final String findQuery = "select *from books where Book_ID=:Book_ID";
        try (Connection conn = DatabaseUtils.createConnection()) {
            List<Book> list = conn.createQuery(findQuery).
                    addParameter("Book_ID", id).
                    executeAndFetch(Book.class);
            if (list.size() == 0) return null;
            else return list.get(0);
        }
    }
}
