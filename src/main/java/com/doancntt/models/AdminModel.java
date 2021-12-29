package com.doancntt.models;

import com.doancntt.beans.Admin;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.List;

public class AdminModel {
    public static Admin FindByEmail(String account) {
        String findSql = "select * from admin where Account=:account;";
        try (Connection con = DatabaseUtils.createConnection()) {
            List<Admin> list = con.createQuery(findSql)
                    .addParameter("account", account)
                    .executeAndFetch(Admin.class);
            if (list.size() == 0)
                return null;
            else return list.get(0);
        }
    }
}
