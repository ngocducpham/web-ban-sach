package com.doancntt.utils;

import org.sql2o.Connection;
import org.sql2o.Sql2o;

public class DatabaseUtils{
    public static Connection createConnection(){
        Sql2o sql2o = new Sql2o("jdbc:mysql://localhost:3306/bookstorehcmute", "root", "123456");
        return sql2o.open();
    }
}
