<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
    int number1 = Integer.parseInt(request.getParameter("number1"));
    int number2 = Integer.parseInt(request.getParameter("number2"));

    // +, -, X, ÷
    String operator = request.getParameter("operator");
    double result = 0;
    if(operator.equals("+")) {
        result = number1 + number2;
    } else if(operator.equals("-")) {
        result = number1 - number2;
    } else if(operator.equals("X")) {
        result = number1 * number2;
    } else {
        result = number1 / (double)number2;
    }

%>

    <div class="container">
        <h3>계산 결과</h3>
        <div class="display-2"><%= number1 %> <%= operator %> <%= number2 %> = <span class="text-primary"><%= result %></span></div>
    </div>
</body>
</html>