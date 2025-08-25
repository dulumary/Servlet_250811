<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>즐겨찾기 추가</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>즐겨찾기 추가</h2>
        <label>사이트</label>
        <form method="post" action="/db/favorite/create">
            <input type="text" class="form-control col-3" name="name">
            <label>사이트 주소</label>
            <input type="text" class="form-control col-8" name="url">
            <button type="submit" class="btn btn-success mt-3">추가</button>
        </form>
    </div>
</body>
</html>