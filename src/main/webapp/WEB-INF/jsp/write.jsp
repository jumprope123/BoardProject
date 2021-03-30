<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="main">
    <div class="margin1050">
        <form id="writeForm">
            <div class="row mt-5">
                <label for="userNameForWrite" class="col-2 offset-2">작성자명</label>
                <input id="userNameForWrite" name="username" class="form-control col-6">
            </div>
            <div class="row mt-5">
                <label for="passwordForWrite" class="col-2 offset-2">비밀번호</label>
                <input id="passwordForWrite" name="password" class="form-control col-6">
            </div>
            <div class="row mt-5">
                <label for="titleForWrite" class="col-2 offset-2">제목</label>
                <input id="titleForWrite" name="title" class="form-control col-6">
            </div>
            <div class="row mt-2">
                <label for="textForWrite" class="col-2 offset-2">본문내용</label>
                <textarea id="textForWrite" class="form-control col-6" name="textforwrite" style="resize: none" rows="10"></textarea>
            </div>
            <div class="col-12 text-center mt-5">
                <button id="writeOKBtn" class="btn btn-success">입력완료</button>
                <button id="writeCacnelBtn" class="btn btn-danger">입력취소</button>
            </div>
        </form>
    </div>
</div>

