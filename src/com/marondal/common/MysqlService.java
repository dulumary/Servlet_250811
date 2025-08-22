package com.marondal.common;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {

    private Connection connection;

    // 데이터 베이스 접속 기능
    public boolean connect() {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            // 접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 데이터 베이스, 사용자이름, 비밀번호
            String url = "jdbc:mysql://localhost:3306/dulumary_250725";
            String username = "root";
            String password = "root";

            connection = DriverManager.getConnection(url, username, password);

        } catch (SQLException e) {
            // 접속 실패
            return false;
        }

        return true;

    }
    
    
    // select 쿼리 수행 기능
    public List<Map<String, Object>> select(String query) {
        try {
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            // 조회된 결과 컬럼 목록 얻어 오기
            ResultSetMetaData rsmd = resultSet.getMetaData();
            int columnCount = rsmd.getColumnCount();

            // 컬럼 이름 리스트
            List<String> columnList = new ArrayList<>();
            for(int i = 1; i <= columnCount; i++) {
                String name = rsmd.getColumnName(i);
                columnList.add(name);
            }

            List<Map<String, Object>> resultList = new ArrayList<>();
            while(resultSet.next()) {
                // 한행의 정보 
                // 한행의 정보를 Map으로 재구성
                Map<String, Object> row = new HashMap<>();

                for(String column:columnList) {
                    row.put(column, resultSet.getObject(column));
                }

                resultList.add(row);
            }

            statement.close();

            return resultList;

        } catch (SQLException e) {
            return null;
        }
    }


    // insert, update, delete
    public int update(String query) {

        try {
            Statement statement = connection.createStatement();

            int count = statement.executeUpdate(query);

            statement.close();

            return count;

        } catch (SQLException e) {
            return -1;
        }

    }
    
    // 접속 끊기
    public boolean disconnect() {
        try {
            connection.close();
        } catch (SQLException e) {
            return false;
        }

        return true;

    }
    
}
