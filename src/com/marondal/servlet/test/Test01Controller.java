package com.marondal.servlet.test;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test01Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    // Response Header
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");
//        오늘의 날짜는 2021년 5월 20일

        // Response Body
        PrintWriter out = response.getWriter();

        Date now = new Date();

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");

        String dateString = formatter.format(now);

        out.println("오늘의 날짜는 " + dateString);


    }
}
