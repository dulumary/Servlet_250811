package com.marondal.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        String number = request.getParameter("number");
        int dan = Integer.parseInt(number);

        PrintWriter out = response.getWriter();

        out.println("" +
                "<html>\n" +
                "   <head><title>구구단</title></head>\n" +
                "   <body>\n" +
                "       <ul>\n");

        for(int i = 1; i <= 9; i++) {
            out.println("       <li>" + dan + " X " + i + " = " + (dan * i) + "</li>");
        }


        out.println("" +
                "       </ul>\n" +
                "   </body>\n" +
                "</html>");

    }
}
