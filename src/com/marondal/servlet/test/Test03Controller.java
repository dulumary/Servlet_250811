package com.marondal.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.println("" +
                "<html>\n" +
                "   <head><title>기사</title></head>\n" +
                "   <body>\n" +
                "       <h2>[단독] 고양이가 야옹해</h2>\n" +
                "       <div>기사입력 시간 : 2025/08/07 20:28:21</div>\n" +
                "       <hr>\n" +
                "       <div>끝</div>\n" +
                "   </body>\n" +
                "</html>");

    }
}
