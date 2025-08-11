package com.marondal.servlet.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

        String number1String = request.getParameter("number1");
        String number2String = request.getParameter("number2");

        int number1 = Integer.parseInt(number1String);
        int number2 = Integer.parseInt(number2String);

        PrintWriter out = response.getWriter();

        // {"addition":123, "subtraction":30, "multiplication":192, "division":12}

        out.println("{\"addition\":" + (number1 + number2) +  ", " +
                "\"subtraction\":" + (number1 - number2) + ", " +
                "\"multiplication\":" + (number1 * number2) + ", " +
                "\"division\":" + (number1 / number2) + "}");

    }
}
