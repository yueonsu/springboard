<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<body>
    <div id="joinContainer">
        <form action="/user/join" method="post" id="joinFrm">
            <div>
                <input type="text" name="uid" placeholder="id">
            </div>
            <div id="fstPw">
                <input type="password" name="upw" placeholder="password">
            </div>
            <div id="secPw">
                <input type="password" name="cupw" placeholder="checked password">
                <button id="checkPwBtn">중복확인</button>
            </div>
            <div>
                <input type="text" name="nm" placeholder="name">
            </div>
            <div>
                <div>
                    <label>female<input type="radio" value="2" name="gender" checked></label>
                    <label>male<input type="radio" value="1" name="gender"></label>
                </div>
            </div>
            <div>
                <input type="submit" value="회원가입">
            </div>
        </form>
    </div>
<script src="/res/js/user/join.js"></script>
</body>
</html>
