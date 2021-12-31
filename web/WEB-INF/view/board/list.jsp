<%@ page import="org.example.springboard.board.model.BoardEntity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리스트</title>
</head>
<body>
<h1>리스트</h1>
<c:if test="${sessionScope.loginUser != null}">
    <div><a href="/board/write"><button>글쓰기</button></a></div>
</c:if>

<c:choose>
    <c:when test="${fn:length(requestScope.list) != 0}">
        <table>
            <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>날짜</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${requestScope.list}">
                <tr class="record" data-iboard="${item.iboard}">
                    <td>${item.iboard}</td>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.writerNm}"></c:out></td>
                    <td>${item.hit}</td>
                    <td>${item.rdt}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        게시글이 없습니다.
    </c:otherwise>
</c:choose>

<script src="/res/js/board/list.js"></script>
</body>
</html>
