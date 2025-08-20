<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Melong</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    String idString = request.getParameter("id");
    String title = request.getParameter("title");
%>
<div id="wrap">
    <header class="d-flex">
        <div class="logo d-flex align-items-center">
            <h1 class="text-success">Melong</h1>
        </div>
        <div class="search d-flex align-items-center">
            <div class="input-group col-4">
                <input type="text" class="form-control">
                <div class="input-group-append">
                    <button class="btn btn-success" type="button">검색</button>
                </div>
            </div>
        </div>
    </header>
    <nav class="main-menu">
        <ul class="nav font-weight-bold">
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱챠트</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">뮤직 어워드</a></li>
        </ul>
    </nav>
    <section class="main-contents">
        <h3>곡 정보</h3>
        <% for(Map<String, Object> song:musicList) {
            // idString 이 null이 아니면 id로 비교
            int id = 0;
            if(idString != null) {
                id = Integer.parseInt(idString);
            }
            // title이 null이 아니면 title로 비교
            if((idString != null && id == (Integer)song.get("id")) ||
            (title != null && title.equals(song.get("title")))) {

                int time = (Integer)song.get("time"); %>
        <div class="song-info d-flex border border-success p-3">
            <div>
                <img width="200" src="<%= song.get("thumbnail") %>">
            </div>
            <div class="ml-4">
                <div class="display-4"><%= song.get("title")%></div>
                <div class="font-weight-bold text-success"><%= song.get("singer") %></div>
                <div class="small mt-3 text-secondary">
                    <div>앨범 - <%= song.get("album") %></div>
                    <div>재생시간 - <%= time / 60 %>:<%= time % 60 %></div>
                    <div>작곡가 - <%= song.get("composer")%></div>
                    <div>작사가 - <%= song.get("lyricist")%></div>
                </div>
            </div>
        </div>
        <% }
        } %>
        <div class="lyrics mt-4">
            <h3>가사</h3>
            <hr>
            <div>가사 정보 없음</div>
        </div>

    </section>
    <footer>
        <hr>
        <div class="text-secondary">Copyright 2025. melong All Rights Reserved.</div>
    </footer>
</div>

</body>
</html>