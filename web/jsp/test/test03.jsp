<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>날짜 / 시간</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

    <%
        // what - date, time
        String what = request.getParameter("what");

        Date now = new Date();
        // 날짜를 보여줄지 시간을 보여줄지를 구분할 값
        String result = null;
        if(what.equals("date")) {  // 날짜
            SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
            result = formatter.format(now);
        } else {  // 시간
            SimpleDateFormat formatter = new SimpleDateFormat("현재시간 HH시 mm분 ss초");
            result = formatter.format(now);
        }
    %>

    <div class="container">
        <div class="display-1"><%= result %></div>
    </div>

</body>
</html>
