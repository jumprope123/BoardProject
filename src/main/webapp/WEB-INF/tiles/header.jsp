<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header class="mt-5">
    <div class="row">
        <div class="col-12 text-center">
            <h1><a href="/" class="text-decoration-none">게시판 구현</a></h1>
        </div>
    </div>
    <div class="row">
        <div class="col-6 offset-6 text-right">
            <div class="btn-group">
                <c:if test="${empty UID}">
                <button class="btn btn-secondary" id="loginBtn">로그인</button>
                <button class="btn btn-secondary" id="joinBtn">회원가입</button>
                </c:if>
                <c:if test="${not empty UID}">
                    <button class="btn btn-secondary" id="logout">로그아웃</button>
                    <button class="btn btn-secondary" id="memberInfo">회원정보수정</button>
                </c:if>
            </div>
        </div>
    </div>
</header>