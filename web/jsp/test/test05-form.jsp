<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>길이 변환</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>길이 변환</h2>
        <form method="post" action="/jsp/test/test05.jsp">
            <div class="d-flex align-items-end">
                <input type="text" class="form-control col-2 mr-1" name="cm">
                <div>cm</div>
            </div>
            <label>인치 <input type="checkbox" name="unit" value="inch"></label>
            <label>야드 <input type="checkbox" name="unit" value="yard"></label>
            <label>피트 <input type="checkbox" name="unit" value="feet"></label>
            <label>미터 <input type="checkbox" name="unit" value="meter"></label>
            <br>
            <button type="submit" class="btn btn-success">변환</button>
        </form>
    </div>


</body>
</html>