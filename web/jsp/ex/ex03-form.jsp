<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post form</title>
</head>
<body>

    <form method="get" action="/jsp/ex/ex03.jsp">
        <label>닉네임</label><input type="text" name="nickname">
        <h4>좋아하는 동물을 고르세요</h4>
        <label>고양이<input type="radio" name="animal" value="cat"></label>
        <label>강아지<input type="radio" name="animal" value="dog"></label>
        <label>호랑이<input type="radio" name="animal" value="tiger"></label>
        <h4>좋아하는 과일을 고르세요</h4>
        <select name="fruit">
            <option value="banana">바나나</option>
            <option value="strawberry">딸기</option>
            <option>복숭아</option>
        </select>
        <br>
        <button type="submit">입력</button>
    </form>

</body>
</html>
