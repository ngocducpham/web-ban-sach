package com.doancntt.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login_RegistServlet", value = "/Login_Regist/*")
public class Login_RegistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        switch (path){
            case "Regist":

                break;
            case "Login":

                break;
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getPathInfo();
        switch (path){
            case "Regist":

                break;
            case "Login":

                break;
            default:
                break;
        }
    }
}
