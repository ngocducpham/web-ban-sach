package com.doancntt.controllers;

import at.favre.lib.crypto.bcrypt.BCrypt;
import com.doancntt.beans.Customer;
import com.doancntt.models.CustomerModel;
import com.doancntt.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgetPassServlet", value = "/ForgetPass/*")
public class ForgetPassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/GetMail":
                ServletUtils.forward("/views/login/forget.jsp", request, response);
                break;
            case "/Verify_code":
                ServletUtils.forward("/views/login/verify.jsp", request, response);
                break;
            case "/Type_new_pass":
                ServletUtils.forward("/views/login/new_pass.jsp", request, response);
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/GetMail":
                GetMail(request, response);
                break;
            case "/Verify_code":
                Verify_code(request, response);
                break;
            case "/Type_new_pass":
                Type_new_pass(request, response);
            default:
                break;
        }
    }

    private void Type_new_pass(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("User_Forget_Pass");
        String new_password = request.getParameter("new_pass");
        String EnCrypted_pass = BCrypt.withDefaults().hashToString(12, new_password.toCharArray());
        CustomerModel.update_pass(c, EnCrypted_pass);
        ServletUtils.redirect("/Login", request, response);
    }

    private void Verify_code(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("User_Forget_Pass");
        String code = request.getParameter("code");
        if (code.equals(c.getCode())) {
            System.out.println("true");
            ServletUtils.redirect("/ForgetPass/Type_new_pass", request, response);
        } else {
            System.out.println("false");
        }
    }

    private void GetMail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        Customer c = CustomerModel.FindByEmail(email);
        String code = ServletUtils.get_Verify_Code();
        if (c != null) {
            Customer c2 = new Customer(c.getCustomer_ID(),c.getFirst_Name(), c.getEmail(), c.getLast_Name(), c.getPassword(), code);
            boolean isSent = ServletUtils.sengMail_to_Reset_Password(c2);

            if (isSent) {
                HttpSession session = request.getSession();
                session.setAttribute("User_Forget_Pass", c2);
                ServletUtils.redirect("/ForgetPass/Verify_code", request, response);
            }
        } else {
            ServletUtils.forward("/views/login/No_Account_Found.jsp", request, response);
        }
    }
}
