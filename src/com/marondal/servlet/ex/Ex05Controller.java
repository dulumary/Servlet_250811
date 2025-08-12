package com.marondal.servlet.ex;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {

    // Post
    // 파라미터로 전달 받을 값이
    // 보안적으로 예민한 데이터,
    // 주소로 표현하기 긴 데이터,
    // 파일
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // 이름과 생년월일(보안적으로 민감한 데이터)을 전달 받고, 이름과 나이를 html 로 구성
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");

        int year = Integer.parseInt(birthday.substring(0, 4));

        int age = 2025 - year + 1;

        out.println("" +
                "<html>\n" +
                "   <head><title>정보</title></head>\n" +
                "   <body>");

        out.println("" +
                "       <h3>이름 : " + name + "</h3>\n" +
                "       <h3>나이 : " + age + "</h3>");

        out.println("" +
                "   </body>\n" +
                "</html>");

    }
}
