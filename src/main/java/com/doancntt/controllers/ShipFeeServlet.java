package com.doancntt.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "ShipFeeServlet", value = "/ShipFeeServlet")
public class ShipFeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String from = request.getParameter("f"); // Ho Chi Minh
        String to = request.getParameter("t");
        String weight = request.getParameter("w"); // tam tinh 500g, co keu doi thi them db

        String httpRequest = sendHTTPRequest(from, to, weight);

        PrintWriter printWriter = response.getWriter();
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        printWriter.print(httpRequest);
        printWriter.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static String sendHTTPRequest(String from, String to, String weight){
        try{
            URL url = new URL("http://www.vnpost.vn/vi-vn/tra-cuu-gia-cuoc?from=" +from+ "&to="+to+"&weight=" + weight);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            String line;
            InputStreamReader streamReader = new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8);
            BufferedReader bufferedReader = new BufferedReader(streamReader);
            StringBuilder response = new StringBuilder();
            while ((line = bufferedReader.readLine()) != null){
                response.append(line);
            }
            bufferedReader.close();
            return  response.toString();
        }
        catch (Exception e){
            return "";
        }
    }
}
