package com.doancntt.models;

import com.doancntt.beans.Book;
import com.doancntt.utils.DatabaseUtils;
import org.sql2o.Connection;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BookModel {
    public static List<Book> findByCategory(int categoryID){
        return new ArrayList<>(
                Arrays.asList(
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg"),
                        new Book(1,"Yêu Em Bằng Mắt, Giữ Em Bằng Tim",300,"17/11/2021",
                                "Phương đã từng có một tình yêu trong trẻo tinh khôi ở tuổi 18 với Trung - người trợ lý tài giỏi, trung thành của bà nội. Nhưng họ sớm bị chia cắt khi Phương qua Pháp đoàn tụ với mẹ, và mất liên lạc trong 10 năm ròng rã. Định mệnh cuối cùng cũng cho họ gặp nhau, giải tỏa những hiểu lầm và nối lại mối duyên xưa. Nhưng thách thức vẫn chưa hết. Một lần nữa, Phương và Trung phải đứng trước lựa chọn nắm tay hoặc buông nhau ra",
                                180000,20,1,1,1,1,
                                "yeu-em-bang-mat-giu-em-bang-tim.jpg")
                )
        );
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
