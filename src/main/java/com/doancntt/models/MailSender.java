package com.doancntt.models;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailSender {

    public static boolean send(String mail_to, String header, String content) {
        boolean success = false;
        // ngocduc011001@yahoo.com
        // Pham011001
        String fromServer = "vinabook_bookstore", password = "lzpdlafsakbdhwrh";
        try {
            Properties prop = new Properties();
            prop.put("mail.smtp.host", "smtp.mail.yahoo.com");
            prop.put("mail.smtp.port", "587");
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true");
            Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromServer, password);
                }
            });
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromServer+"@yahoo.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mail_to));
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setSubject(header);
            message.setText(content);
            Transport.send(message);
            success = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
}
