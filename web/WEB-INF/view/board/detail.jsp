<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${requestScope.data.title}"/></title>
</head>
<body>
    <c:if test="${sessionScope.loginUser.iuser == requestScope.data.writer}">
    <div id="btnContainer" data-iboard="${requestScope.data.iboard}">
        <button id="btnMod">수정</button>
        <button id="btnDel">삭제</button>
    </div>
    </c:if>
    <div>${requestScope.msg}</div>
    <div><span>번호 : <c:out value="${requestScope.data.iboard}"/></span></div>
    <div><span>제목 : <c:out value="${requestScope.data.title}"/></span></div>
    <div><span>작성자 : <c:out value="${requestScope.data.writerNm}"></c:out></span></div>
    <div><span>내용 : <c:out value="${requestScope.data.ctnt}"/></span></div>
    <div><span>조회수 : <c:out value="${requestScope.data.hit}"/></span></div>
    <div><span>작성일시 : <c:out value="${requestScope.data.rdt}"/></span></div>
    <div><span>수정일시 : <c:out value="${requestScope.data.mdt}"/></span></div>
    <script src="/res/js/board/detail.js"></script>
</body>
</html>
