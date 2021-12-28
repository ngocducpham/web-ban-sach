package com.doancntt.utils;

import com.doancntt.beans.Customer;
import com.doancntt.beans.Detail_Request;
import com.doancntt.models.MailSender;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;

public class ServletUtils {
    public static void forward(String url, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    public static void redirect(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String contextPath = request.getContextPath();
        int idx = url.indexOf(contextPath);
        if (idx < 0) {
            response.sendRedirect(contextPath + url);
        } else {
            response.sendRedirect(url);
        }
    }

    public static String get_Verify_Code() {
        Random r = new Random();
        int n = r.nextInt(999999);
        return String.format("%06d", n);
    }

    public static boolean sengMail_to_Reset_Password(Customer c) {
        String mail_to = c.getEmail();
        String header = "Reset Your Password";
        String content = "Use this code to Reset Your Password: " + c.getCode();
        return MailSender.send(mail_to, header, content);
    }

    public static void send_mail_to_noti_accept_order(Customer c, List<Detail_Request> dr) {
        String lsit_of_details = "";
        for (Detail_Request d : dr) {
            lsit_of_details += d.getSo_sach() + " x " + d.getTitle() + " = " + d.getTien_sach() + " \n";
        }
        String mail_to = c.getEmail();
        String header = "Order Accepted";
        String content = "Your Order include: \n" + lsit_of_details + "" +
                "Has been accepted and books is on the way to your home !";
        boolean sent = MailSender.send(mail_to, header, content);
    }

    public static void send_mail_to_noti_refuse_order(Customer c, List<Detail_Request> dr) {
        String lsit_of_details = "";
        for (Detail_Request d : dr) {
            lsit_of_details += d.getSo_sach() + " x " + d.getTitle() + " = " + d.getTien_sach() + " \n";
        }
        String mail_to = c.getEmail();
        String header = "Order Rejected";
        String content = "Your Order include: \n" + lsit_of_details + "" +
                "Has been Rejected by VinaBook, Sorry for the inconvenience !";
        boolean sent = MailSender.send(mail_to, header, content);
    }
}
