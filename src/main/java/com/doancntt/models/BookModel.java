package com.doancntt.models;

import com.doancntt.beans.Book;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.ArrayList;
import java.util.Arrays;
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
