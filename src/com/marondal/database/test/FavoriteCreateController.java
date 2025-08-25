package com.marondal.database.test;

import com.marondal.common.MysqlService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/db/favorite/create")
public class FavoriteCreateController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");
        String url = request.getParameter("url");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        String query = "INSERT INTO `favorite` (`name`, `url`) \n" +
                "VALUE\n" +
                "('" + name + "', '" + url + "');";

        mysqlService.update(query);

        // 응답에 특정 페이지로 새롭게 요청하도록 하는 정보
        // redirect
        response.sendRedirect("/db/favorite/list.jsp");

    }

}
