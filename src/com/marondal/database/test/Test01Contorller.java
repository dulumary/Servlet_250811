package com.marondal.database.test;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/test/test01")
public class Test01Contorller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();

        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/dulumary_250725";
            String username = "root";
            String password = "root";

            Connection connection = DriverManager.getConnection(url, username, password);

//            String query = "INSERT INTO `real_estate`\n" +
//                    "(`realtor_id`, `address`, `area`, `type`, `price`)\n" +
//                    "VALUE \n" +
//                    "(3, '헤라펠리스 101동 5305호', 350,\t'매매', 1500000);";
//
//            Statement statement = connection.createStatement();
//
//            int count = statement.executeUpdate(query);
//
//            out.println("수행 결과 : " +  count);

            String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10;";

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next()) {

                String address = resultSet.getString("address");
                int area = resultSet.getInt("area");
                String type = resultSet.getString("type");

                out.println("매물 주소 : " + address + "  면적 : " + area + " 타입 : " + type);
            }

            statement.close();
            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
