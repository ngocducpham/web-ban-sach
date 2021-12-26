package com.doancntt.models;

import com.doancntt.beans.Detail_Request;
import com.doancntt.beans.order_request;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.Date;
import java.util.List;

public class order_requestModel {
    public static List<order_request> Find_All() {
        String Sql = "select * from order_request";
        try (Connection con = DatabaseUtils.createConnection()) {
            return con.createQuery(Sql)
                    .executeAndFetch(order_request.class);
        }
    }

    public static void Add_request(Date request_date, int status, int Customer_ID) {
        String Sql = "insert into order_request (request_date, status, Customer_ID)\n" +
                "values (:request_date,:status,:Customer_id);";
        try (Connection con = DatabaseUtils.createConnection()) {
            con.createQuery(Sql)
                    .addParameter("request_date", request_date)
                    .addParameter("status", status)
                    .addParameter("Customer_id", Customer_ID)
                    .executeUpdate();
        }
    }

    public static List<Detail_Request> FindByCusId(int cus_id) {
        String sql = "select c.Customer_ID,\n" +
                "       c.First_Name,\n" +
                "       c.Last_Name,\n" +
                "       Order_Date,\n" +
                "       Dest_Address,\n" +
                "       sum(Quantity)   as so_sach,\n" +
                "       sum(Total_Cost) as tien_sach,\n" +
                "       Title,\n" +
                "       Img\n" +
                "from customer_order\n" +
                "         join order_detail od on customer_order.Order_ID = od.Order_ID\n" +
                "         join customer c on c.Customer_ID = customer_order.Customer_ID\n" +
                "         join books b on b.Book_ID = od.Book_ID\n" +
                "where c.Customer_ID = :cus_id\n" +
                "group by b.Book_ID;\n";
        try (Connection conn = DatabaseUtils.createConnection()) {
            return conn.createQuery(sql)
                    .addParameter("cus_id", cus_id)
                    .executeAndFetch(Detail_Request.class);
        }
    }

}
