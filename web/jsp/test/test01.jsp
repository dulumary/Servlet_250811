<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>예제1</title>
</head>
<body>

    <%
        int[] scores = {80, 90, 100, 95, 80};
        int sum = 0;
        for(int i = 0; i < scores.length; i++) {
            sum += scores[i];
        }

        double average = sum / (double)scores.length;
    %>

    <h2>점수 평균은 <%= average %> 입니다. </h2>

    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

        int score = 0;
        for(String answer:scoreList) {
            if(answer.equals("O")) {
                score += 100 / scoreList.size();
            }
        }
    %>

    <h2>채점 결과는 <%= score %>점 입니다.</h2>

    <%!
       public int addSum(int number) {
           int sum = 0;
           for(int i = 1; i <= number; i++) {
               sum += i;
           }

           return sum;
       }
    %>

    <h2>1에서 50까지의 합은 <%= addSum(50) %></h2>

    <%
        String birthDay = "20010820";

        int year = Integer.parseInt(birthDay.substring(0, 4));

        int age = 2025 - year + 1;
    %>
    <h2>20010820의 나이는 <%= age %>살 입니다.</h2>


</body>
</html>
