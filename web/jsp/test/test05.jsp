<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>변환 결과</title>
</head>
<body>
<%
    // 변환할 cm 길이, 변환할 단위들
    int cm = Integer.parseInt(request.getParameter("cm"));

    // inch, feet, yard, meter
    String[] units = request.getParameterValues("unit");
    String result = "";
    for(int i = 0; i < units.length; i++) {
        String unit = units[i];
        if(unit.equals("inch")) {
            double inch = cm * 0.39;
            result += inch + " in<br>";
        } else if(unit.equals("feet")) {
            double feet = cm * 0.032808399;
            result += feet + " ft<br>";
        } else if(unit.equals("yard")) {
            double yard = cm * 0.010936133;
            result += yard + " yd<br>";
        } else {  // meter
            double meter = cm / 100.0;
            result += meter + " m<br>";
        }
    }


%>
    <h2>변환 결과</h2>
    <h3><%= cm %>cm</h3>
    <hr>
    <h3><%= result %></h3>

</body>
</html>