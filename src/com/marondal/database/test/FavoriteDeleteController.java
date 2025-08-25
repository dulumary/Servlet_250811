package com.marondal.database.test;

import com.marondal.common.MysqlService;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/db/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String id = request.getParameter("id");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();
        String query = "DELETE FROM `favorite` WHERE `id` = " + id;

        mysqlService.update(query);

        response.sendRedirect("/db/favorite/list.jsp");


    }
}
