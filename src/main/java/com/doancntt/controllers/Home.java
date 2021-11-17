package com.doancntt.controllers;

import com.doancntt.beans.Book;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "Home", urlPatterns = "/")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String path = request.getPathInfo();
        List<Book> books = new ArrayList<>(
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
        request.setAttribute("books", books);
        request.setAttribute("newBooks",books);
        ServletUtils.forward("/views/homes/index.jsp", request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
