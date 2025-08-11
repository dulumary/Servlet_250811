package com.marondal.servlet.test;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

//        현재 시간은 14시 52분 43초 입니다.
        PrintWriter out = response.getWriter();

        Date now = new Date();

        SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
        String timeString = formatter.format(now);

        out.println("현재 시간은 " + timeString + "입니다");

    }
}
